.class public final Landroid/hardware/tv/mediaquality/DtsVirtualX;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/DtsVirtualX;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public definition:Z

.field public dialogClarity:Z

.field public height:Z

.field public limiter:Z

.field public tbHdx:Z

.field public truSurroundX:Z

.field public truVolumeHd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/DtsVirtualX$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->limiter:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truSurroundX:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truVolumeHd:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->dialogClarity:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->definition:Z

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->height:Z

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->tbHdx:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->limiter:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truSurroundX:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->truVolumeHd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->dialogClarity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->definition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/hardware/tv/mediaquality/DtsVirtualX;->height:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    return-void
.end method
