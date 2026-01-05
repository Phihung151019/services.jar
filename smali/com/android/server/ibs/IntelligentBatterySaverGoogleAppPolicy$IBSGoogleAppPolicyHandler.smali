.class public final Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy$IBSGoogleAppPolicyHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {p0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->mNetworkLimited:Z

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/IntelligentBatterySaverGoogleAppPolicy;->setGoogleAppsNetworkAllow(Z)V

    return-void
.end method
