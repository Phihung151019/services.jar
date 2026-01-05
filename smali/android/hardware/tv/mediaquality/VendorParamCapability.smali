.class public final Landroid/hardware/tv/mediaquality/VendorParamCapability;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/VendorParamCapability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

.field public identifier:Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;

.field public isSupported:Z

.field public range:Landroid/hardware/tv/mediaquality/ParameterRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/VendorParamCapability$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->identifier:Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    :goto_0
    iget-object p0, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result v1

    :goto_1
    or-int p0, v0, v1

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

    iget-object v1, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->identifier:Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v1, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->isSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->defaultValue:Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/VendorParamCapability;->range:Landroid/hardware/tv/mediaquality/ParameterRange;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {p0, v0, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    return-void
.end method
