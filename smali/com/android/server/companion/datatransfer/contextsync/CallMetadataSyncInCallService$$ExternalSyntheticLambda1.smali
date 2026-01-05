.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;

    check-cast p1, Landroid/telecom/Call;

    sget v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncInCallService;->$r8$clinit:I

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;

    invoke-virtual {p0}, Landroid/telecom/InCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceCall;-><init>(Landroid/content/Context;Landroid/telecom/Call;Landroid/telecom/CallAudioState;)V

    return-object v0
.end method
