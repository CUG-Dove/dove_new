/**
 * Project Name:Dove-platform
 * File Name:PropertiesUtils.java
 * package com.sanxia.dove.platform.controller.tools;
 * Date:2018年3月14日上午11:06:20
 *
 */

package com.sanxia.dove.platform.controller.tools;

import com.sanxia.dove.common.core.dto.MapDto;
import com.sanxia.dove.platform.core.controller.PlatformBaseController;
import com.sanxia.dove.platform.core.utils.PlatformConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Controller
@RequestMapping("/tools/upload")
public class FileUploadController extends PlatformBaseController{

    private static Set<String> imgs = new HashSet<String>();
    static {
        imgs.addAll(Arrays.asList(PlatformConstants.IMAGE_FORMAT_ARRAY));
    }
    @RequestMapping("/uploadImg")
    @ResponseBody
    public MapDto uploadImg(@RequestParam(value = "dir") String dir,  @RequestParam("file") MultipartFile file,
                            HttpServletRequest request) throws IOException {
        MapDto mapDto = new MapDto();
        if (file != null && !file.isEmpty()) {
            String fileName = file.getOriginalFilename().toLowerCase();
            String type = fileName.substring(fileName.lastIndexOf("."));
            if ( !imgs.contains(type)) {
                mapDto.errorMsg("不支持该格式的图片");
                return mapDto;
            }
            if (file.getSize() > PlatformConstants.IMAGE_SIZE_LIMIT) {
                mapDto.errorMsg("图片太大不能上传，最多只能" + PlatformConstants.IMAGE_SIZE_LIMIT / 1024 + "k");
                return mapDto;
            }
            // http://blog.csdn.net/long690276759/article/details/53393387
            //在Windows下的路径分隔符和Linux下的路径分隔符是不一样的，当直接使用绝对路径时，跨平台会暴出“No such file or diretory”的异常。这往往为我们在代码中使用了错误的路径分隔符导致的
            //比如说要在temp目录下建立一个test.txt文件，在Windows下应该这么写：
           // File file1 = new File ("C:\tmp\test.txt");
            // 在Linux下则是这样的：
           // File file2 = new File ("/tmp/test.txt")
            // 如果要考虑跨平台，则最好是这么写：
            //File myFile = new File("C:" + File.separator + "tmp" + File.separator, "test.txt");
            String imgPath = dir + File.separator + UUID.randomUUID() + type;
            StringBuffer newFileName = new StringBuffer(PlatformConstants.IMG_DISK_PATH);
            newFileName.append(File.separator).append(imgPath);
            File newFile = new File(newFileName.toString());
            if (!newFile.exists()) {
                newFile.mkdir();
            }
            file.transferTo(newFile);
            mapDto.putInData("src", PlatformConstants.IMG_CONTEXT_PATH + "/" + imgPath.replace('\\', '/'));
            mapDto.putInData("img", imgPath.replace('\\', '/'));
        }
        return mapDto;
    }
}
