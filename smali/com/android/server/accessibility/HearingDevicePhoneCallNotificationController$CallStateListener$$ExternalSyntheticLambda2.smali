.class public final synthetic Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/media/AudioDeviceInfo;

    sget-object v0, Lcom/android/server/accessibility/HearingDevicePhoneCallNotificationController$CallStateListener;->BUILTIN_MIC:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
