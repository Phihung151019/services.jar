.class public final synthetic Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/association/Associations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/association/Associations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 11

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/association/Associations;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p1

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "state"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "persistence-version"

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v1, "associations"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/companion/association/Associations;->mMaxId:I

    const-string/jumbo v5, "max-id"

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/AssociationInfo;

    const-string/jumbo v5, "association"

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getId()I

    move-result v7

    const-string/jumbo v8, "id"

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v7, "profile"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "package"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "mac_address"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceMacAddressAsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "display_name"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "self_managed"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v7, "notify_device_nearby"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v7, "revoked"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v7, "pending"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->isPending()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v7, "time_approved"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v7, "last_time_connected"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getLastTimeConnectedMs()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v7, "system_data_sync_flags"

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Icon;->writeToStream(Ljava/io/OutputStream;)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :goto_1
    const-string/jumbo v8, "device_icon"

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "device_id"

    invoke-interface {v6, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v9

    invoke-virtual {v9}, Landroid/companion/DeviceId;->getCustomId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "custom_device_id"

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/companion/AssociationInfo;->getDeviceId()Landroid/companion/DeviceId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/companion/DeviceId;->getMacAddressAsString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "mac_address_device_id"

    invoke-static {v8, v9, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-interface {v8, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    invoke-interface {v6, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    :cond_2
    invoke-interface {v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method
