namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    gc = GoodsCategory.create!(  title: "Компьютерная техника")
    gc = GoodsCategory.create!(  title: "Спортивный инвентарь")
    gc = GoodsCategory.create!(  title: "Автомобиль")

    gss = GoodsStatusSeller.create!(  title: "не зарегистрировано")
    gss = GoodsStatusSeller.create!(  title: "на Аукционе")
    gss = GoodsStatusSeller.create!(  title: "доставлено покупателю")
    gss = GoodsStatusSeller.create!(  title: "принято предложение о бартере")
    gss = GoodsStatusSeller.create!(  title: "отдано по бартеру")
    gss = GoodsStatusSeller.create!(  title: "снято с Аукциона")

    gsb = GoodsStatusBuyer.create!(  title: "товар у продавца")
    gsb = GoodsStatusBuyer.create!(  title: "отказался получать товар")
    gsb = GoodsStatusBuyer.create!(  title: "товар получен")

    us = UsersStatus.create!(  title: "администратор")
    us = UsersStatus.create!(  title: "продавец")
    us = UsersStatus.create!(  title: "покупатель")
    us = UsersStatus.create!(  title: "менеджер Аукциона")

    cs = CardsStatus.create!(  title: "обычная")
    cs = CardsStatus.create!(  title: "топ-товар")

    ts = TradeStatus.create!(  title: "предложение")
    ts = TradeStatus.create!(  title: "оплата")
    ts = TradeStatus.create!(  title: "бартер")

    us = User.create!(
        login: "admin", 
        email: "example@auction.org", 
        password: "12345678",
        password_confirmation: "12345678",
        fullname: "Запорожский Александр", 
        processing_pd: false, 
        users_status_id: 1, 
        action: false, 
        created_at: "2018-07-30 07:48:18", 
        updated_at: "2018-07-30 07:48:18" )
    us = User.create!(
        login: "seller", 
        email: "seller@auction.org", 
        password: "87654321",
        password_confirmation: "87654321",
        fullname: "Рыкова Светлана", 
        processing_pd: false, 
        users_status_id: 2, 
        action: false, 
        created_at: "2018-07-30 07:48:18", 
        updated_at: "2018-07-30 07:48:18" )
    us = User.create!(
        login: "buyer", 
        email: "buyer@auction.org", 
        password: "11223344",
        password_confirmation: "11223344",
        fullname: "Дроздов Кирил", 
        processing_pd: false, 
        users_status_id: 3, 
        action: false, 
        created_at: "2018-07-30 07:48:18", 
        updated_at: "2018-07-30 07:48:18" )
    us = User.create!(
        login: "manager", 
        email: "manager@auction.org", 
        password: "21212121",
        password_confirmation: "21212121",
        fullname: "Твидова Жанна", 
        processing_pd: false, 
        users_status_id: 4, 
        action: false, 
        created_at: "2018-07-30 07:48:18", 
        updated_at: "2018-07-30 07:48:18" )

  end
end
