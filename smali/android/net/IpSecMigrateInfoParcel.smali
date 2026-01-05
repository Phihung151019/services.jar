.class public Landroid/net/IpSecMigrateInfoParcel;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecMigrateInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final direction:I

.field public final interfaceId:I

.field public final newDestinationAddress:Ljava/lang/String;

.field public final newSourceAddress:Ljava/lang/String;

.field public final oldDestinationAddress:Ljava/lang/String;

.field public final oldSourceAddress:Ljava/lang/String;

.field public final requestId:I

.field public final selAddrFamily:I


# direct methods
.method public static bridge synthetic -$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 0

    invoke-static {p0}, Landroid/net/IpSecMigrateInfoParcel;->internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/IpSecMigrateInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    iput p2, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    iput p3, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    iput-object p4, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    iput-object p6, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    iput-object p7, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    iput p8, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    return-void
.end method

.method private static internalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecMigrateInfoParcel;
    .locals 7

    new-instance v0, Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-direct {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x4

    const-string/jumbo v4, "Overflow in the size of parcelable"

    const v5, 0x7fffffff

    if-lt v2, v3, :cond_11

    :try_start_0
    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_0

    :goto_0
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setRequestId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_3

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setSelAddrFamily(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_5

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setDirection(I)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_7

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_9

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :try_start_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setOldDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_b

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_a

    goto/16 :goto_0

    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :try_start_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewSourceAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_d

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :try_start_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setNewDestinationAddress(Ljava/lang/String;)Landroid/net/IpSecMigrateInfoParcel$Builder;

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt v3, v2, :cond_f

    invoke-virtual {v0}, Landroid/net/IpSecMigrateInfoParcel$Builder;->build()Landroid/net/IpSecMigrateInfoParcel;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :try_start_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/net/IpSecMigrateInfoParcel$Builder;->setInterfaceId(I)Landroid/net/IpSecMigrateInfoParcel$Builder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_10

    goto/16 :goto_0

    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :try_start_9
    new-instance v3, Landroid/os/BadParcelableException;

    const-string/jumbo v6, "Parcelable too small"

    invoke-direct {v3, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    sub-int/2addr v5, v2

    if-gt v1, v5, :cond_12

    goto/16 :goto_0

    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->requestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->selAddrFamily:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecMigrateInfoParcel;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->oldDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newSourceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecMigrateInfoParcel;->newDestinationAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/net/IpSecMigrateInfoParcel;->interfaceId:I

    invoke-static {p1, p0, p2}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    move-result p0

    invoke-static {p0, p2, p1, p0}, Landroid/companion/virtualcamera/SupportedStreamConfiguration$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    return-void
.end method
