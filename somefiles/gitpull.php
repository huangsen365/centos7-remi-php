<html>

<head>

  <script>
    
    // 模板提供商（云计算服务器运维）: https://www.wansio.com
    // 本脚本免费开源，代码精简易用，若开发者在执行gitpull动作拉取更新代码过程中遇到 bug ，请尝试自行修复或者联系项目作者。项目链接为 https://github.com/huangsen365/centos7-remi-php/blob/master/somefiles/gitpull.php
    
    function myFunction() {
      //alert("Page is loaded");
      //document.getElementById('myBtn').disabled = false;
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

  <!--
# 模板提供商（云计算服务器运维）: https://www.wansio.com
本脚本免费开源，代码精简易用，若开发者在执行gitpull动作拉取更新代码过程中遇到 bug ，请尝试自行修复或者联系项目作者。项目链接为 https://github.com/huangsen365/centos7-remi-php/blob/master/somefiles/gitpull.php
-->

  <p>
    <?php

    /* Please add 'gitpull.php' into the .gitignore file */
    # 项目地址 https://github.com/huangsen365/centos7-remi-php/blob/master/somefiles/gitpull.php
    # wget https://raw.githubusercontent.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
    # wget https://raw-githubusercontent-com-huangsen365.wansio.com/huangsen365/centos7-remi-php/master/somefiles/gitpull.php -O gitpull.php
    #$git_pull_command = "sh /var/www/" . $_SERVER['SERVER_NAME'] . "/gitpull.sh";
    $git_pull_command = "cd /var/www/" . $_SERVER['SERVER_NAME'] . " && git pull 2>&1";

    # print("git pull - ". $_SERVER['SERVER_NAME']);

    # check if php function shell_exec is enabled or not, if not then print out the error message to suggest enable it in correspoding conf file under folder : /etc/opt/remi/php74/php-fpm2.d
    # php_admin_value[disable_functions] = ***

    $output1 = shell_exec("git config --get remote.origin.url");
    $output2 = shell_exec($git_pull_command);
    $output3 = shell_exec("git branch");
    echo '<pre>';
    print_r($output1);
    print_r($output2);
    print_r("git branch: ");
    print_r($output3);
    echo '</pre>';

    echo "<button id='myBtn' type='button' style='height:50px;width:220px' onclick='document.getElementById(\"myBtn\").textContent = \"Please wait...\";document.getElementById(\"myBtn\").disabled = true;hideSpan();location.reload(true);'>git pull</button><br>";
    echo "<span id='datetimeinfo'>" . date("Y/m/d H:i:s O") . "</span><br><br>";
    echo "Today is " . date("l") . ".<br>";

    echo "<a target='_blank' href='" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "'>" . $_SERVER['REQUEST_SCHEME'] . "://" . $_SERVER['SERVER_NAME'] . "</a><br>";
    ?>
  </p>

  <!--
# 模板提供商（云计算服务器运维）: https://www.wansio.com
本脚本免费开源，代码精简易用，若开发者在执行gitpull动作拉取更新代码过程中遇到 bug ，请尝试自行修复或者联系项目作者。项目链接为 https://github.com/huangsen365/centos7-remi-php/blob/master/somefiles/gitpull.php
-->

</body>

</html>
