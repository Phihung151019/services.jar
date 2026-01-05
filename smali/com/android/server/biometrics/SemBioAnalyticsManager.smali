.class public final Lcom/android/server/biometrics/SemBioAnalyticsManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

.field public mFaceQualityBigFace:I

.field public mFaceQualityNoFace:I

.field public mFaceQualitySmallFace:I

.field public mFaceStartTime:J

.field public mFaceTemplateId:J

.field public mFpAuthRejectConsecutively:I

.field public final mH:Landroid/os/Handler;

.field public mIsFirstSensorCheckForDQA:Z

.field public mIsSensorErrorForDQA:Z

.field public mLatestAuthenticatedForDQA:I

.field public mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceStartTime:J

    iput-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceTemplateId:J

    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 1

    sget-object v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->sInstance:Lcom/android/server/biometrics/SemBioAnalyticsManager$1;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioAnalyticsManager;

    return-object v0
.end method


# virtual methods
.method public final faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final faceOnAuthenticatedFailure(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAIF"

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const-string v1, "FAFF"

    invoke-direct {v0, v2, v3, v1, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->faceInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    return-void
.end method

.method public final fpHandleData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v1, "FPIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    goto :goto_0

    :cond_2
    const-string v0, "FPIF"

    iget-object v3, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_LOGGING_MODE:Z

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "tracking_id"

    const-string v3, "4G2-399-4810151"

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "feature"

    iget-object v4, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    const-string/jumbo v4, "extra"

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "com.samsung.android.spay"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "com.paypal.android.p2pmobile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "com.squareup.cash"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "com.venmo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    const-string/jumbo v1, "com.zellepay.zell"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "FINGERPRINT_IDENTIFICATION"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "personalizedData"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_a
    const-string/jumbo p1, "pkg_name"

    const-string/jumbo v1, "com.android.server.biometrics.sensors.fingerprint"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    const-string/jumbo v1, "ev"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "is_summary"

    const-string/jumbo v1, "true"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p1, "com.sec.android.diagmonagent"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SemAnalyticsManager.insertLog: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService.AM"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    return-void
.end method

.method public final fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    const-string p3, "FPIS"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "FPFC"

    if-eqz p3, :cond_2

    iget p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    const/4 p3, 0x6

    if-lt p2, p3, :cond_1

    rem-int/lit8 p3, p2, 0x5

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p1, v0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    return-void

    :cond_2
    const-string p3, "FPIF"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFpAuthRejectConsecutively:I

    const/4 p3, 0x5

    if-lt p2, p3, :cond_3

    rem-int/lit8 p3, p2, 0x5

    if-nez p3, :cond_3

    new-instance p3, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p1, v0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_3
    return-void
.end method

.method public final fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final fpInsertLogHelp(IIILjava/lang/String;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    const-string p1, "FPQW"

    goto :goto_1

    :cond_0
    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_1

    const-string p1, "FPQL"

    goto :goto_1

    :cond_1
    const/16 p1, 0x3ee

    if-ne p2, p1, :cond_2

    const-string p1, "FPQU"

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    const-string p1, "FPQF"

    goto :goto_1

    :pswitch_2
    const-string p1, "FPQS"

    goto :goto_1

    :pswitch_3
    const-string p1, "FPQD"

    goto :goto_1

    :pswitch_4
    const-string p1, "FPQI"

    goto :goto_1

    :pswitch_5
    const-string p1, "FPQP"

    :goto_1
    if-eqz p1, :cond_3

    new-instance p2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p3, p1, p4}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public injectPendingList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    return-void
.end method

.method public reset()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mPendingRequestBeforeBootComplete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mDqaMgr:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsSensorErrorForDQA:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mIsFirstSensorCheckForDQA:Z

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mLatestAuthenticatedForDQA:I

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    iput v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    return-void
.end method
