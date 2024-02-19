class FoodsController < ApplicationController


    def index
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
    end

    def new
        @food = Food.new
    end
    
      def create
        food = Food.new(food_params)

        food.user_id = current_user.id

        if food.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @food = Food.find(params[:id])
        @comments = @food.comments
        @comment = Comment.new
      end

      def edit
        @food = Food.find(params[:id])
      end

      def update
        food = Food.find(params[:id])
        if food.update(food_params)
          redirect_to :action => "show", :id => food.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        food = Food.find(params[:id])
        food.destroy
        redirect_to action: :top
      end

      def top
      end

      def place
      end

      def menu
      end

      def medi
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("genre LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def ame
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("genre LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def port
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def lost
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def arab
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def mermaid
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def mystery
        @foods = Food.all
        if params[:search] == nil
          @foods= Food.all
        elsif params[:search] == ''
          @foods= Food.all
        else
          #部分検索
          @foods = Food.where("body LIKE ? ",'%' + params[:search] + '%')
        end
      end

      def niku
        @foods = Food.where("genre LIKE ?", '%' + "肉" + '%')
      end

      def sakana
        @foods = Food.where("genre LIKE ?", '%' + "魚" + '%')
      end

      def pasta
        @foods = Food.where("genre LIKE ?", '%' + "パスタ" + '%')
      end

      def burger
        @foods = Food.where("genre LIKE ?", '%' + "サンドウィッチ" + '%')
      end

      def bread
        @foods = Food.where("genre LIKE ?", '%' + "パン" + '%')
      end

      def curry
        @foods = Food.where("genre LIKE ?", '%' + "カレー" + '%')
      end
      
      def pizza
        @foods = Food.where("genre LIKE ?", '%' + "ピザ" + '%')
      end

      def hand
        @foods = Food.where("genre LIKE ?", '%' + "ワンハンドメニュー" + '%')
      end

      def pop
        @foods = Food.where("genre LIKE ?", '%' + "ポップコーン" + '%')
      end

      def sweets
        @foods = Food.where("genre LIKE ?", '%' + "スウィーツ" + '%')
      end

      def ice
        @foods = Food.where("genre LIKE ?", '%' + "アイスクリーム" + '%')
      end

      def alcohol
        @foods = Food.where("genre LIKE ?", '%' + "アルコール" + '%')
      end

      def login
      end

    
      private
      def food_params
        params.require(:food).permit(:name, :genre, :genre2, :area, :about, :image )
      end

    end
