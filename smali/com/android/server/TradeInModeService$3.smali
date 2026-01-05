.class public final Lcom/android/server/TradeInModeService$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/TradeInModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/TradeInModeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/TradeInModeService$3;->this$0:Lcom/android/server/TradeInModeService;

    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/TradeInModeService$3;->this$0:Lcom/android/server/TradeInModeService;

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void
.end method
