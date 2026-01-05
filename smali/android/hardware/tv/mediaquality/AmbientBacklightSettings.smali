.class public final Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorFormat:I

.field public colorThreshold:I

.field public hZonesNumber:I

.field public hasLetterbox:Z

.field public maxFramerate:I

.field public source:B

.field public uid:I

.field public vZonesNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    iput v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->maxFramerate:I

    iput v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    iput v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    iput-boolean v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hasLetterbox:Z

    iput v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorThreshold:I

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

    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->maxFramerate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hasLetterbox:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorThreshold:I

    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    move-result p0

    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    return-void
.end method
