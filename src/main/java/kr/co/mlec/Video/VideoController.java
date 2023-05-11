package kr.co.mlec.Video;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.method.annotation.StreamingResponseBody;

@Controller
@RequestMapping("/video")
public class VideoController {
	
	@GetMapping("/stream.do")
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
		                    outputStream.write(buffer, 0, bytesRead);
		                }
		            } catch (IOException e) {
		                e.printStackTrace();
		            }
		        });

		return responseEntity;
    }
}
