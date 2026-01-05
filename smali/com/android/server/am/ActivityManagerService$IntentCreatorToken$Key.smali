.class public final Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public final mClipDataUris:Ljava/util/List;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mCreatorPackage:Ljava/lang/String;

.field public final mCreatorUid:I

.field public final mData:Landroid/net/Uri;

.field public final mFlags:I

.field public final mPackage:Ljava/lang/String;

.field public final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0xc3

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
