.class public final synthetic Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(ILandroid/companion/AssociationInfo;)V
    .locals 0

    iput p1, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/companion/AssociationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget v0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;->f$0:Landroid/companion/AssociationInfo;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/companion/AssociationInfo;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/companion/DeviceId;->isSameDevice(Landroid/companion/DeviceId;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :pswitch_0
    check-cast p1, Landroid/companion/datatransfer/SystemDataTransferRequest;

    invoke-virtual {p1}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    move-result p1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    if-ne p1, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
