.class public final Lcom/android/server/TradeInModeService$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p0, p0, Lcom/android/server/TradeInModeService$2;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void
.end method
