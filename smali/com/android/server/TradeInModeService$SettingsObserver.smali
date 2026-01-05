.class public final Lcom/android/server/TradeInModeService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p1}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/TradeInModeService$SettingsObserver;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    :cond_0
    return-void
.end method
