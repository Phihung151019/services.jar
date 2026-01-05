.class public final synthetic Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deviceRoleAction(IILjava/util/List;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForStrategy(II)I

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
