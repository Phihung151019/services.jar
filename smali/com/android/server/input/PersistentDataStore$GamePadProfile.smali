.class public final Lcom/android/server/input/PersistentDataStore$GamePadProfile;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mId:I

.field public mName:Ljava/lang/String;

.field public final mSimpleButtonMap:Ljava/util/Map;

.field public final mSimpleStickMap:Ljava/util/Map;

.field public mUsed:Z

.field public final synthetic this$0:Lcom/android/server/input/PersistentDataStore;


# direct methods
.method public constructor <init>(Lcom/android/server/input/PersistentDataStore;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->this$0:Lcom/android/server/input/PersistentDataStore;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleStickMap:Ljava/util/Map;

    iput p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Profile_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    iget p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final clearData()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleStickMap:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Profile_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    return-void
.end method
