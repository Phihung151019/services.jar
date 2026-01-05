.class public final Lcom/android/server/am/mars/MARsBigData$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V

    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    iget-object p2, p1, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "PLEV"

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$1;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendFGSTypeBigData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
