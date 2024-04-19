
//
//  Javascript de gestion d'un bouton Afficher/Masquer
//

var ie4 = false;

if ( document.all )
  { ie4 = true;
  }

function
  getObject(id)
{ if (ie4)
    { return document.all[id]; }
   else
    { return document.getElementById(id); }
}

function
  toggle
    ( in_ID
    )
{
  var link=getObject( "link_"+ in_ID );
  var lText = link.innerHTML;
  var d = getObject( in_ID );

  if ( "+" == lText )
    { link.innerHTML = '&#8722;';
      d.style.display = 'block';
    }
   else
    { link.innerHTML = '+';
      d.style.display = 'none';
    }
}