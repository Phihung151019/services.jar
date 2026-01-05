.class public final Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onBroadCastReceive [DQA]: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BiometricService.AM"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x2

    const-string v2, "FPDA"

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpCalibrationStatus:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpCalibrationStatus:Ljava/lang/String;

    const-string v0, "FPCA"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    if-nez v1, :cond_3

    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    :cond_3
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_5
    :goto_1
    return-void
.end method
