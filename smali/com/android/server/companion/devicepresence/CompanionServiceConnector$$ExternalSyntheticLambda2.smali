.class public final synthetic Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/companion/AssociationInfo;)V
    .locals 0

    iput p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/companion/DevicePresenceEvent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/companion/DevicePresenceEvent;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDevicePresenceEvent(Landroid/companion/DevicePresenceEvent;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/companion/AssociationInfo;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/companion/AssociationInfo;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    invoke-interface {p1, p0}, Landroid/companion/ICompanionDeviceService;->onDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
