.class public final Lcom/android/server/broadcastradio/aidl/RadioModule$2;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/broadcastradio/IAnnouncementListener;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    sget-object p1, Landroid/hardware/broadcastradio/IAnnouncementListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    sget-object v0, Landroid/hardware/broadcastradio/IAnnouncementListener;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p0, 0x3

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_2
    const v0, 0xfffffe

    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const-string/jumbo p0, "be432e9a5bdd211bdac48d6d03607fa71436f75c"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_3
    if-eq p1, v2, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_4
    sget-object p1, Landroid/hardware/broadcastradio/Announcement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/broadcastradio/Announcement;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    new-instance p2, Ljava/util/ArrayList;

    array-length p3, p1

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p3, 0x0

    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_5

    aget-object p4, p1, p3

    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p4, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    const-string/jumbo v3, "Program selector can not be null"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-byte v3, p4, Landroid/hardware/broadcastradio/Announcement;->type:B

    iget-object p4, p4, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {p4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p4

    invoke-direct {v0, v1, v3, p4}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$2;->val$listener:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    invoke-virtual {p0, p2}, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->onListUpdated(Ljava/util/List;)V

    return v2
.end method
