function Get-Contactv1 {
 
    param (
        
        [string]$fname,
        [string]$emailid
    )
 
    $contacts = Import-Csv -Path "c:\demo\contactdetails.csv"
    $nofnamematch=$true
    $noemailidmatch=$true

    foreach($contact in $contacts) 
     {
        
        if($fname)
        {
            # write comparision with $fname
            #write-host "fname is provided $fname"
            if ( $($contact.fname).Trim() -eq $fname)
            {
                write-host "the contact for $fname is $($contact.contact)"
                $nofnamematch=$false
                $noemailidmatch=$false
            }

        }
        elseif($emailid)
        {
            
            # write comparision with $emailid
           # write-host "emaiid provided $emailid"
            if($($contact.emailid).trim() -eq $emailid)
            {
                write-host "The contact for $emailid is $($contact.contact)"
                $noemailidmatch=$false
                $nofnamematch=$false
            }
        }
        else
        {
            write-host "please provide either fname or emailid"
        }


     }

         if($nofnamematch)
        {
            write-host "no fname match found"
        }
        elseif($noemailidmatch)
        {
            write-host "no emailifmatch found"
        }

}