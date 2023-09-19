<html>

<head>
    <meta charset="utf-8">
    <style>
        body {
            font-size: larger;
        }
    </style>
    <title><?php echo 'Git Operations - ' . $_SERVER['SERVER_NAME']; ?></title>
</head>

<body>
    <p>
        <?php
        function isValidDomainName($domain)
        {
            $pattern = "/^(?:(?:[a-zA-Z0-9](?:[a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}\.?|localhost)$/i";
            return preg_match($pattern, $domain) === 1;
        }

        $gitOutput = '';
        $server_name = $_SERVER['SERVER_NAME'];
        $server_path = "/var/www/" . $server_name;

        if (!isValidDomainName($server_name)) {
            die('Invalid server name');
        }

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            chdir($server_path); // Change the current working directory

            if (isset($_POST['reset'])) {
                $cleanCommand = "git reset --hard && git clean -fd";
                $gitOutput = shell_exec($cleanCommand);
            }

            if (isset($_POST['branch'])) {
                $selectedBranch = escapeshellarg($_POST['branch']);
                $switchBranchCommand = "git checkout $selectedBranch || git checkout -b $selectedBranch origin/$selectedBranch";
                $gitOutput = shell_exec($switchBranchCommand);
            }
        }

        chdir($server_path);
        $currentBranch = trim(shell_exec("git rev-parse --abbrev-ref HEAD"));
        $branchesOutput = shell_exec("git branch -r");
        $branches = array_filter(explode("\n", trim($branchesOutput)), function ($branch) {
            return strpos($branch, 'HEAD ->') === false;
        });
        ?>

    <form method="POST">
        Select Branch:
        <select name="branch">
            <?php foreach ($branches as $branch) :
                $branch = trim(str_replace('origin/', '', $branch));
            ?>
                <option value="<?php echo htmlspecialchars($branch); ?>" <?php echo $branch === $currentBranch ? 'selected' : ''; ?>>
                    <?php echo htmlspecialchars($branch); ?>
                </option>
            <?php endforeach; ?>
        </select>
        <button type="submit">Switch Branch</button>
    </form>

    <form method="POST" style="margin-top: 20px;">
        <button type="submit" name="reset" value="1">Reset Workspace</button>
    </form>

    <?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !empty($gitOutput)) {
        echo '<pre>Git Output: ' . htmlspecialchars($gitOutput) . '</pre>';
    }
    ?>
    </p>
</body>

</html>
