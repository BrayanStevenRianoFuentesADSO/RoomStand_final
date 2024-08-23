let dom=document;

dom.addEventListener('DOMContentLoaded', function(){
    
    
    let form=dom.getElementById("form_login_huesped");
    if(form){
        
        form.addEventListener('submit', function(event){
            
            let email=dom.querySelector("#email").value.trim();
            let password=dom.querySelector("#password").value.trim();
            
            if(!email || !password){
                
                alert("Por favor, digita tu usuario y contraseña")
                event.preventDefault();
                
            }
            
            else{
                
             console.error('Formulario de login no encontrado');   
            }
        })
        const urlparams = new URLSearchParams(window.location.search);
        const error = urlparams.get('error');
        
        if(error === 'invalid_credentials'){
            
            alert('Credenciales incorrectas. Por favor, intente de nuevo.');
        }
    }
});
