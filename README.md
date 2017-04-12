# Philippe

Change your shell prefix with a lot of movies quotes.

**Requirments**

 - Perl >= 5.14

**How to use Philippe ?**

     git clone https://github.com/HLerman/philippe.git
     vim ~/.bashrc

Add this line at the end of the file

     PS1='$(perl /path/of/philippe/philippe.pl) '

Save and reload bashrc file.  

**How can add my own quotes ?**
Create a new json file in the quote folder and use this template :

    {
        "name": "title like Terminator or Barbar",
        "quote": [
            "First quote",
            "Seconde quote",
            "Thrid quote",
            "..."
    ]
}

Your file will be automatically used.
