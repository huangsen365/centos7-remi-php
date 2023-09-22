<html>

<head>
    <meta charset="utf-8">
    <script type="text/javascript">
        
        // wget https://raw-githubusercontent-com-huangsen365.wansio.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
        // curl -fsSL https://raw-githubusercontent-com-huangsen365.wansio.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -o gitpull.php
        
        function myFunction() {
            document.getElementById('myBtn').textContent = 'git pull';
        }

        function hideSpan() {
            var span = document.getElementById('datetimeinfo');
            span.style.display = 'none';
        }
    </script>
    <style>
        body {
            font-size: larger;
        }
    </style>
    <title><?php echo 'git pull - ' . $_SERVER['SERVER_NAME']; ?></title>
</head>

<body onload="myFunction()">
    <p>
        <?php

        function isValidDomainName($domain)
        {
            $pattern = "/^(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}\.?|localhost)$/i";
            return preg_match($pattern, $domain) === 1;
        }

        $server_name = $_SERVER['SERVER_NAME'];

        if (isValidDomainName($server_name)) {
            $server_path = "/var/www/" . $server_name;

            $currentBranch = trim(shell_exec("cd {$server_path} && git rev-parse --abbrev-ref HEAD"));
            $git_pull_command = "cd {$server_path} && git pull origin {$currentBranch} 2>&1";

            $output1 = shell_exec("cd {$server_path} && git config --get remote.origin.url");
            $output1b = str_replace("git@", "https://", $output1);
            $output1c = str_replace(":", "/", $output1b);
            $output1d = str_replace("https///", "https://", $output1c);

            $output2 = shell_exec($git_pull_command);

            $output3 = shell_exec("cd {$server_path} && git branch");

            echo "<p>" . $server_name . "</p>";
            echo "<button id='myBtn' type='button' style='height:50px;width:220px' onclick='document.getElementById(\"myBtn\").textContent = \"Please wait...\";document.getElementById(\"myBtn\").disabled = true;hideSpan();location.reload(true);'>git pull</button><br>";
            echo '<pre>';
            print_r($output1d);
            print_r($output1);
            print_r($output2);
            echo "\n";
            print_r("git branch: ");
            echo "\n";
            print_r($output3);
            echo '</pre>';
            echo "<span id='datetimeinfo'>" . date("Y/m/d H:i:s O") . "</span><br>";
            echo "Today is " . date("l") . ".<br>";
            echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $server_name . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $server_name . "</a><br>";
        } else {
            die('Invalid server name');
        }
        ?>
    </p>
</body>

</html>
