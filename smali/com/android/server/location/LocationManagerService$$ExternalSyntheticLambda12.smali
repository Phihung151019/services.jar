.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/PackageTagsList;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    iput p2, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$0:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    iget v1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$1:I

    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;->f$2:Landroid/os/PackageTagsList;

    invoke-interface {v0, v1, p0}, Landroid/location/LocationManagerInternal$LocationPackageTagsListener;->onLocationPackageTagsChanged(ILandroid/os/PackageTagsList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
