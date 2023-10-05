<?php
include_once('./stripe/init.php');

$publishableKey="pk_test_51NxEugSFME1MrSt6apL5vMQk5UI8PNyXMbMAKoPGWVivVSntQSRCB6scj5vUnywWZAa9kFTE8tE8aQ5YyeW47F3D0010wyEYzW";

$secretKey="sk_test_51NxEugSFME1MrSt6sxr4O4bfxSS60vSKdjyvOUNuAg6fvDAaogCEtBbhL14b10NWRbf7BQuOl6IZcWSItnactk7v008cXRS22E";

\Stripe\Stripe::setApiKey($secretKey);
?>
