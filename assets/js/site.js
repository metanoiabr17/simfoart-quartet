
document.addEventListener('DOMContentLoaded',()=>{
 const t=document.querySelector('.mobile-toggle'),m=document.querySelector('.menu');
 if(t&&m)t.addEventListener('click',()=>m.classList.toggle('open'));
 document.querySelectorAll('[data-mail-form]').forEach(f=>f.addEventListener('submit',e=>{
   e.preventDefault(); const d=new FormData(f); const subject=encodeURIComponent(d.get('subject')||'Mesaj de pe simfoart.ro');
   let body=''; for(const [k,v] of d.entries()){ if(k!=='subject') body+=`${k}: ${v}\n`; }
   window.location.href=`mailto:info@simfoart-quartet.ro?subject=${subject}&body=${encodeURIComponent(body)}`;
 }));
});
