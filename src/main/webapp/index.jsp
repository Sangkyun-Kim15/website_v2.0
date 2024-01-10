<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
video {
    position: fixed;
    right: 0;
    bottom: 0;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    background-size: cover;
}

#content {
    padding: 350px 90px;
}

#title {
    font-family: 'Lato', sans-serif;
    font-weight: 300;
    font-size: 60px;
    letter-spacing: -1px;
    color: white;
    line-height: 30px;
    margin: 0px 0px 40px;
    text-transform: uppercase;
}

a {
    background-color: white;
    font-family: 'Lato', sans-serif;
    font-weight: 100;
    font-size: 20px;
    color: black;
    letter-spacing: 1px;
    text-transform: uppercase;
    text-decoration-line: none;
    border-radius: 10px;
    padding: 7px 20px;
    display: inline-block; /* Added for better control on padding and to prevent stretching */
}

/* Responsive adjustments */
@media (max-width: 768px) {
    video {
        /* Adjust video settings if needed for smaller screens */
    }

    #content {
        padding: 100px 20px; /* Reduced padding for smaller screens */
    }

    #title {
        font-size: 30px; /* Smaller font size for smaller screens */
        padding: 0 10px; /* Padding to ensure text doesn't touch the edges */
        text-align: center; /* Centered title text */
    }

    a {
        font-size: 16px; /* Smaller button font size */
        padding: 5px 14px; /* Adjusted padding */
    }
}

/* Additional media query for even smaller screens like mobile phones */
@media (max-width: 480px) {
    #content {
        padding: 50px 10px; /* Further reduced padding for very small screens */
    }

    #title {
        font-size: 24px; /* Even smaller font size for very small screens */
    }
}

</style>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lato:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <video
        src="./video/stream.do?filename=coverr-golden-gate-bridge-at-sunset-5420-original.mp4"
        muted autoplay loop></video>
    <div id="content">
        <h2 id="title">Sangkyun's portfolio</h2>
        <a href="./main.do">visit</a><br />
    </div>
</body>
</html>
