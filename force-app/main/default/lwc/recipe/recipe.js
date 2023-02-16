import { LightningElement } from "lwc";
import getRandomRecipe from "@salesforce/apex/RecipeSearchCls.getRandomRecipe";
import getRecipeByIngredients from "@salesforce/apex/RecipeSearchCls.getRecipeByIngredients";

export default class Recipe extends LightningElement {
  recipes = [];
  fetchRandomRecipe() {
    getRandomRecipe()
      .then((data) => {
        this.recipes =
          JSON.parse(data) && JSON.parse(data).recipes
            ? JSON.parse(data).recipes
            : [];
            console.log('Json data'+this.recipes);
      })
      .catch((error) => {
        console.error(error);
      });
  }

  fetchRecipesByIngredients() {
    const ingredients = this.template.querySelector(".ingredient-input").value;
    getRecipeByIngredients({ ingredients })
      .then((data) => {
        this.recipes = JSON.parse(data);
        console.log('some recipies '+this.recipes)
      })
      .catch((error) => {
        console.error(error);
      });
  }
}