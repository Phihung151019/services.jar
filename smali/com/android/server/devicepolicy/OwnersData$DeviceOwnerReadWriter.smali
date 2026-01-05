.class public final Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/OwnersData;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/OwnersData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/OwnersData;->getDeviceOwnerFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final readInner(ILcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "package"

    const-string v3, "DevicePolicyManagerService"

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    const/4 v5, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v1, "system-update-policy"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "freeze-record"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "device-owner-type"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "device-owner-protected-packages"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "policy-engine-migration"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "device-owner-context"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "device-owner"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "pending-ota-info"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v0

    :cond_8
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string/jumbo p0, "Unexpected tag: "

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    invoke-static {p2}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return v2

    :pswitch_1
    const-string/jumbo p1, "start"

    invoke-interface {p2, v4, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "end"

    invoke-interface {p2, v4, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-virtual {p2, p1}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "Invalid system update freeze record loaded"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iput-object v4, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    :cond_9
    :goto_2
    return v2

    :pswitch_2
    invoke-interface {p2, v4, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "value"

    invoke-interface {p2, v4, p3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :pswitch_3
    invoke-interface {p2, v4, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "size"

    invoke-interface {p2, v4, p3, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge v0, p3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "name"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    if-nez p2, :cond_b

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    :cond_b
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :pswitch_4
    const-string/jumbo p1, "migratedToPolicyEngine"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    const-string/jumbo p1, "migratedPostUpgrade"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    const-string/jumbo p1, "securityLogMigrated"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    const-string/jumbo p1, "suspendedPackagesMigrated"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    const-string/jumbo p1, "memoryTaggingMigrated"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mMemoryTaggingMigrated:Z

    const-string/jumbo p1, "easPolicyMigratedToPolicyEngine"

    invoke-interface {p2, v4, p1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mEasMigratedToPolicyEngine:Z

    return v2

    :pswitch_5
    iget p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    const-string/jumbo p3, "userId"

    invoke-interface {p2, v4, p3, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    return v2

    :pswitch_6
    invoke-static {p2}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    return v2

    :pswitch_7
    invoke-static {p2}, Landroid/app/admin/SystemUpdateInfo;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x7d4643cb -> :sswitch_7
        -0x786d7384 -> :sswitch_6
        -0x714796a2 -> :sswitch_5
        -0x2b382ec2 -> :sswitch_4
        -0x1bbd56e3 -> :sswitch_3
        0x206e91eb -> :sswitch_2
        0x4db6d447 -> :sswitch_1
        0x6834f798 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldWrite()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/OwnersData;

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "device-owner"

    invoke-virtual {v0, p1, v2}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    const-string/jumbo v0, "device-owner-context"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "userId"

    iget v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string/jumbo v3, "device-owner-type"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "package"

    invoke-interface {p1, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v4, "value"

    invoke-interface {p1, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "system-update-policy"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v2, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v0, :cond_3

    const-string/jumbo v2, "pending-ota-info"

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/SystemUpdateInfo;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v0, :cond_7

    :cond_4
    const-string/jumbo v0, "freeze-record"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-eqz v2, :cond_5

    const-string/jumbo v3, "start"

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v2, :cond_6

    const-string/jumbo v3, "end"

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    const-string/jumbo v0, "policy-engine-migration"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "migratedToPolicyEngine"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "migratedPostUpgrade"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "securityLogMigrated"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "easPolicyMigratedToPolicyEngine"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mEasMigratedToPolicyEngine:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "suspendedPackagesMigrated"

    iget-boolean v3, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "memoryTaggingMigrated"

    iget-boolean p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMemoryTaggingMigrated:Z

    invoke-interface {p1, v1, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
