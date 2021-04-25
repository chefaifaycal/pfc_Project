<div>
    <form action="/AjoutServiceController" method="post">
    <?= csrf_field() ?>
        <div>
            <label for="titre">Titre du service</label>
           <input type="text"  name="titre" id="titre" >
        </div>

        <div>
            <label for="description">Description</label>
            <textarea name="description" id="description" placeholder="Description du service" cols="30" rows="10"></textarea>
        </div>

        <div>
        <label for="categorie">Catégorie</label>
               <select name="categorie" id="categorie">
                    <option value="massonerie">Massonerie</option>  
                    <option value="plomberie">Plomberie</option> 
                    <option value="electricite">Electrivité</option>                 
                    
                </select>
        </div>

        <div>
            <label for="tarif">Tarif</label>
            <input type ="number" name="tarif" id="tarif" placeholder="Tarif du service"></input>
        </div>

        <div>
            <label for="duree">Durée de delivration</label>
            <input type ="number" name="duree" id="duree" placeholder="Durée en jours"></input>
        </div>

        <div>
            <label for="dureevalidite">Durée de validité</label>
            <input type ="number" name="dureevalidite" id="dureevalidite" placeholder="Durée en jours"></input>
        </div>

        <div>
            <button><a href="#">Uploader des images</a></button>
        </div>

        <div>
        <input type="submit" name="ajoutservice" value="ajoutservice" />
        </div>
    
    </form>
</div>