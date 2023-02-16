import { LightningElement, api } from "lwc";
//import getRecipe from "@salesforce/apex/Spoonacular.getRecipe";
import  getRecipe  from '@salesforce/apex/RecipeSearchCls.getRecipe';

export default class SearchRecipe extends LightningElement {
        @api image;
        @api title;
        @api price;
        @api time;
        @api summary;
        @api recipeId;
        @api
        set dishTypes(data) {
            this.dishList = data && data.join();
            // console.log('C1'+data);
            // console.log('C2'+data.join())
            console.log('dishtype'+this.dishList);
        }
        get dishTypes() {
            return this.dishList;
        }
        @api
        set diets(data) {
            this.dietList = data && data.join();
        }
        get diets() {
            return this.dietList;
        }
        dishList;
        dietList;

        fetchRecipe() {
            getRecipe({ recipeId: this.recipeId })
            .then((data) => {
                const recipe = JSON.parse(data);
                if (recipe) {
                this.image = recipe.image;
                this.price = recipe.pricePerServing;
                this.time = recipe.readyInMinutes;
                this.summary = recipe.summary;
                this.dishList = recipe.dishTypes && recipe.dishTypes.join(); //dishList
                this.dietList = recipe.diets && recipe.diets.join();
                }
            })
            .catch((error) => {
                console.error(error);
            });
        }

        get hasDetails() {
            return this.summary ? true : false;
        }
}