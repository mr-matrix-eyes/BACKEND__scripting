﻿Stop-Process -Name ** | Where-Object -FilterScript {$_.Id -ne $PID} -Verbose 