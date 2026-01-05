.class public Lcom/android/server/media/CustomSessionPolicyProvider;
.super Lcom/android/server/media/MediaSessionPolicyProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method


# virtual methods
.method public getSessionPoliciesForApplication(ILjava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/media/CustomSessionPolicyProvider;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo p1, "media_button_deny"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
