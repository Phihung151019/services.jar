.class public final Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public compressAlgorithm:B

.field public settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

.field public zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    invoke-static {v0}, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->describeContents(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    invoke-static {p0}, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-byte v1, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->compressAlgorithm:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
