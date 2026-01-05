.class public Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"

.field static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"

.field static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"

.field static final TAG_USER_ID:Ljava/lang/String; = "user-id"


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    return-void
.end method

.method public static parseMetadataFile(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v7, v3

    move-object v5, v4

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v1, :cond_7

    if-ne v8, v0, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v2, :cond_7

    :cond_1
    if-eq v8, v0, :cond_0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v10, "admin-type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v9, v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "source-component"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "user-id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    move v9, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "target-component"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    move v9, v3

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_7
    new-instance p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1419903f -> :sswitch_3
        -0x8c5cda3 -> :sswitch_2
        0x10c541cb -> :sswitch_1
        0x264366f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
