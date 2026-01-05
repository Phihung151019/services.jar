.class public final synthetic Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    sget v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->$r8$clinit:I

    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onLoginDetected(Landroid/content/pm/ParceledListSlice;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;

    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    sget v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->$r8$clinit:I

    invoke-interface {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/service/contentcapture/IContentProtectionService;->onUpdateAllowlistRequest(Landroid/os/IBinder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
