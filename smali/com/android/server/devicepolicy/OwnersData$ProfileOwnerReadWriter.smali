.class public final Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/OwnersData;->getProfileOwnerFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    iput p2, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    return-void
.end method


# virtual methods
.method public final readInner(ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "profile-owner"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "Unexpected tag: "

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public final shouldWrite()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, v0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "profile-owner"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
