FactoryBot.define do
  factory :article do
    title { 'Article title' }
    text { 'Article text' }

    # создаем фабрику для создание статьи с нексолькими комментариями
    factory :article_with_comments do
      # после создание article
      after :create do |article, evalutor|
        # создаем список из 3-х комментариях
        create_list :comment, 3, article: article
      end
    end

  end
end