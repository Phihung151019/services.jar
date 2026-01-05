.class public final Landroid/hardware/broadcastradio/AlertArea;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/broadcastradio/AlertArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public geocodes:[Landroid/hardware/broadcastradio/Geocode;

.field public polygons:[Landroid/hardware/broadcastradio/Polygon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/broadcastradio/AlertArea$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/broadcastradio/AlertArea;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-static {v3}, Landroid/hardware/broadcastradio/AlertArea;->describeContents(Ljava/lang/Object;)I

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

    iget-object v0, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    invoke-static {v0}, Landroid/hardware/broadcastradio/AlertArea;->describeContents(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    invoke-static {p0}, Landroid/hardware/broadcastradio/AlertArea;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/hardware/broadcastradio/AlertArea;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/broadcastradio/AlertArea;

    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    iget-object v3, p1, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    iget-object p1, p1, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[Landroid/os/Parcelable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p0, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "{"

    const-string/jumbo v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "polygons: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "geocodes: "

    invoke-static {v2, v3, v1, v0}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "AlertArea"

    invoke-static {p0, v2, v1, v0}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/StringJoiner;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/hardware/broadcastradio/Alert$$ExternalSyntheticOutline0;->m(Ljava/util/StringJoiner;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
