package kr.co.mlec.Video;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

@RestController
public class VideoController {

    @GetMapping("/video/stream.do")
    public ResponseEntity<StreamingResponseBody> streamVideo(@RequestParam(value = "filename") String filename) throws Exception {
        String videoPath = "/video/main/" + filename; // Update with the actual path to your video file
        File videoFile = new File(videoPath);

        // Set content attributes
        MediaType mediaType = MediaType.parseMediaType("video/mp4");
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(mediaType);
        headers.setContentDispositionFormData("inline", filename);

        // Create the response entity with headers and streaming logic
        ResponseEntity<StreamingResponseBody> responseEntity = ResponseEntity.ok()
                .headers(headers)
                .body(outputStream -> {
                    try (InputStream inputStream = new FileInputStream(videoFile);
                         BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream)) {
                        byte[] buffer = new byte[4096];
                        int bytesRead;
                        while ((bytesRead = bufferedInputStream.read(buffer)) != -1) {
                            try {
                                outputStream.write(buffer, 0, bytesRead);
                                outputStream.flush(); // Check for errors during writing
                            } catch (IOException e) {
                                if (!e.getClass().getName().equals("org.apache.catalina.connector.ClientAbortException")) {
                                    e.printStackTrace();
                                }
                                break;
                            }
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            outputStream.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                });

        return responseEntity;
    }
}


