.class public abstract Lcom/android/server/broadcastradio/aidl/ConversionUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/UniqueProgramIdentifier;

    invoke-virtual {v3}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result p0

    invoke-direct {p1, v2, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

.method public static filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 7

    new-instance v0, Landroid/hardware/broadcastradio/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    new-instance v1, Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v5

    iget v6, v5, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "Invalid identifiers: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z

    return-object v0
.end method

.method public static identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4

    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xe

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/16 v0, 0xf

    :cond_2
    :goto_0
    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v1
.end method

.method public static identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z
    .locals 4

    const-wide/32 v0, 0x120927cf

    invoke-static {v0, v1, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0xf9a4b7c

    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 5

    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramIdentifier;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xe

    if-ne v1, v3, :cond_0

    iput v2, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    iput v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    if-ne p0, v2, :cond_2

    const-wide/32 v1, 0xffff

    and-long/2addr v1, v3

    const/16 p0, 0x10

    ushr-long/2addr v3, p0

    const/16 p0, 0x20

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0

    :cond_2
    iput-wide v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0
.end method

.method public static identifierTypeToProgramType(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 2

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7cf

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 10

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    iget v6, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    iget-object v7, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    invoke-static {v7}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {v8}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->emergencyAlert:Landroid/hardware/broadcastradio/Alert;

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    return-object v0
.end method

.method public static programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getRelatedContent()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 7

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-wide v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v4, v4, v3

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string/jumbo v6, "invalid secondary id: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v4, v4, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v4

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/hardware/radio/ProgramSelector$Identifier;

    new-array v1, v1, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v3, v4, p0, v0, v2}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v3
.end method

.method public static programSelectorMeetsSdkVersionRequirement(ILandroid/hardware/radio/ProgramSelector;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p1

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-static {v2, p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 28

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    aget v7, v3, v6

    invoke-static {v7}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [I

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v7, v3, v6

    move v6, v8

    goto :goto_2

    :cond_4
    new-instance v6, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget-object v10, v0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    iget-object v11, v0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    iget-object v12, v0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    iget-object v13, v0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    if-nez v1, :cond_5

    new-array v1, v5, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    :goto_3
    move-object/from16 v18, v1

    goto/16 :goto_8

    :cond_5
    iget-object v4, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    array-length v4, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_4
    if-ge v8, v4, :cond_e

    iget-object v9, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v9, v9, v8

    iget v9, v9, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    sget-object v14, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    sget-object v15, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const/16 v5, 0x1e

    if-ge v9, v5, :cond_7

    :cond_6
    :goto_5
    move-object v5, v14

    goto :goto_6

    :cond_7
    const/16 v5, 0x1f4

    if-ge v9, v5, :cond_8

    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    goto :goto_6

    :cond_8
    const/16 v5, 0x6a9

    if-ge v9, v5, :cond_9

    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    goto :goto_6

    :cond_9
    const/16 v5, 0x7530

    if-ge v9, v5, :cond_a

    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    goto :goto_6

    :cond_a
    const v5, 0xea60

    if-ge v9, v5, :cond_b

    goto :goto_5

    :cond_b
    const v5, 0x1adb0

    if-ge v9, v5, :cond_6

    move-object v5, v15

    :goto_6
    if-ne v5, v14, :cond_c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "BcRadioAidlSrv.convert"

    const-string/jumbo v14, "Unknown frequency band at %d kHz"

    invoke-static {v9, v14, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    const/16 v18, 0x0

    if-ne v5, v15, :cond_d

    new-instance v17, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iget-object v5, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v5, v5, v8

    iget v9, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v14, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v5, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v19, 0x1

    const/16 v23, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    move/from16 v22, v5

    move/from16 v20, v9

    move/from16 v21, v14

    invoke-direct/range {v17 .. v27}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    move-object/from16 v5, v17

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    new-instance v17, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iget-object v5, v1, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v5, v5, v8

    iget v9, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v14, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v5, v5, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/16 v23, 0x1

    const/16 v19, 0x0

    move/from16 v22, v5

    move/from16 v20, v9

    move/from16 v21, v14

    invoke-direct/range {v17 .. v23}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    move-object/from16 v5, v17

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_e
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    goto/16 :goto_3

    :goto_8
    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    if-nez v2, :cond_f

    const/4 v2, 0x0

    move-object/from16 v22, v2

    goto :goto_a

    :cond_f
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x0

    :goto_9
    array-length v7, v2

    if-ge v5, v7, :cond_10

    aget-object v7, v2, v5

    iget-object v8, v7, Landroid/hardware/broadcastradio/DabTableEntry;->label:Ljava/lang/String;

    iget v7, v7, Landroid/hardware/broadcastradio/DabTableEntry;->frequencyKhz:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v22, v4

    :goto_a
    iget-object v0, v0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v23

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    move/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v21, v1

    move-object/from16 v20, v3

    invoke-direct/range {v6 .. v23}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    return-object v6
.end method

.method public static radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v6, v5

    if-ge v4, v6, :cond_a

    aget-object v5, v5, v4

    iget-object v6, v5, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v6, v6

    new-array v8, v6, [I

    move v6, v3

    :goto_1
    iget-object v7, v5, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v9, v7

    if-ge v6, v9, :cond_1

    aget v7, v7, v6

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    :goto_2
    iget-object v7, v5, Landroid/hardware/broadcastradio/AlertInfo;->areas:[Landroid/hardware/broadcastradio/AlertArea;

    array-length v9, v7

    if-ge v6, v9, :cond_9

    aget-object v7, v7, v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v3

    :goto_3
    iget-object v11, v7, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    array-length v12, v11

    if-ge v10, v12, :cond_7

    aget-object v11, v11, v10

    iget-object v12, v11, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v14, v12

    const/4 v15, 0x4

    const-string v1, "BcRadioAidlSrv.convert"

    if-ge v14, v15, :cond_2

    const-string/jumbo v11, "Number of coordinates in alert polygon cannot be less than 4"

    invoke-static {v1, v11}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v4

    move/from16 v17, v10

    :goto_4
    const/4 v3, 0x0

    goto :goto_7

    :cond_2
    aget-object v14, v12, v3

    move/from16 v16, v4

    iget-wide v3, v14, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    array-length v15, v12

    add-int/lit8 v15, v15, -0x1

    aget-object v15, v12, v15

    move-wide/from16 v17, v3

    iget-wide v3, v15, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    cmpl-double v3, v17, v3

    if-nez v3, :cond_3

    iget-wide v3, v14, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    aget-object v12, v12, v14

    iget-wide v14, v12, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    cmpl-double v3, v3, v14

    if-eqz v3, :cond_4

    :cond_3
    move/from16 v17, v10

    goto :goto_6

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v11, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_5
    iget-object v4, v11, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    new-instance v4, Landroid/hardware/radio/RadioAlert$Coordinate;

    iget-object v12, v11, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v12, v12, v3

    iget-wide v14, v12, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    move/from16 v17, v10

    move-object/from16 v18, v11

    iget-wide v10, v12, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    invoke-direct {v4, v14, v15, v10, v11}, Landroid/hardware/radio/RadioAlert$Coordinate;-><init>(DD)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v17

    move-object/from16 v11, v18

    goto :goto_5

    :cond_5
    move/from16 v17, v10

    new-instance v3, Landroid/hardware/radio/RadioAlert$Polygon;

    invoke-direct {v3, v1}, Landroid/hardware/radio/RadioAlert$Polygon;-><init>(Ljava/util/List;)V

    goto :goto_7

    :goto_6
    const-string/jumbo v3, "The first and the last coordinate in alert polygon cannot be different"

    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_7
    if-eqz v3, :cond_6

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v10, v17, 0x1

    move/from16 v4, v16

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_7
    move/from16 v16, v4

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v7, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v3, v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_8
    iget-object v4, v7, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v10, v4

    if-ge v3, v10, :cond_8

    aget-object v4, v4, v3

    new-instance v10, Landroid/hardware/radio/RadioAlert$Geocode;

    iget-object v11, v4, Landroid/hardware/broadcastradio/Geocode;->valueName:Ljava/lang/String;

    iget-object v4, v4, Landroid/hardware/broadcastradio/Geocode;->value:Ljava/lang/String;

    invoke-direct {v10, v11, v4}, Landroid/hardware/radio/RadioAlert$Geocode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    new-instance v3, Landroid/hardware/radio/RadioAlert$AlertArea;

    invoke-direct {v3, v9, v1}, Landroid/hardware/radio/RadioAlert$AlertArea;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    move/from16 v16, v4

    new-instance v7, Landroid/hardware/radio/RadioAlert$AlertInfo;

    iget v9, v5, Landroid/hardware/broadcastradio/AlertInfo;->urgency:I

    iget v10, v5, Landroid/hardware/broadcastradio/AlertInfo;->severity:I

    iget v11, v5, Landroid/hardware/broadcastradio/AlertInfo;->certainty:I

    iget-object v12, v5, Landroid/hardware/broadcastradio/AlertInfo;->description:Ljava/lang/String;

    iget-object v14, v5, Landroid/hardware/broadcastradio/AlertInfo;->language:Ljava/lang/String;

    invoke-direct/range {v7 .. v14}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v16, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v1, Landroid/hardware/radio/RadioAlert;

    iget v3, v0, Landroid/hardware/broadcastradio/Alert;->status:I

    iget v0, v0, Landroid/hardware/broadcastradio/Alert;->messageType:I

    invoke-direct {v1, v3, v0, v2}, Landroid/hardware/radio/RadioAlert;-><init>(IILjava/util/List;)V

    return-object v1
.end method

.method public static radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;
    .locals 6

    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    iget v4, v3, Landroid/hardware/broadcastradio/Metadata;->_tag:I

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Ignored unknown metadata entry: %s with HD radio flag enabled"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_0
    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_1
    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_2
    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_3
    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.UFIDS"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_4
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.COMMERCIAL"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_5
    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_6
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_7
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_8
    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_9
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_a
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_b
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_c
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_d
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_e
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_f
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    :pswitch_10
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_11
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_12
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_13
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_14
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_15
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_16
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    :pswitch_17
    invoke-virtual {v3, v1}, Landroid/hardware/broadcastradio/Metadata;->_assertTag(I)V

    iget-object v3, v3, Landroid/hardware/broadcastradio/Metadata;->_value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v4, v3}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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

.method public static throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-nez v0, :cond_0

    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ": unknown error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    check-cast p0, Landroid/os/ServiceSpecificException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch p0, :pswitch_data_0

    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown error ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_0
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ": UNKNOWN_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, ": CANCELED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ": TIMEOUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, ": NOT_SUPPORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, ": INVALID_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, ": INVALID_ARGUMENTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ": INTERNAL_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string/jumbo v5, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    iget-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string/jumbo v2, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "BcRadioAidlSrv.convert"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0
.end method
