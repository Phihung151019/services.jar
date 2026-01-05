.class public abstract Lcom/android/server/broadcastradio/hal2/Convert;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final METADATA_KEYS:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v2, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string/jumbo v3, "android.hardware.radio.metadata.RDS_PS"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    sget-object v3, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->INT:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    const-string/jumbo v4, "android.hardware.radio.metadata.RDS_PTY"

    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.RDS_RT"

    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.TITLE"

    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.ARTIST"

    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.ALBUM"

    invoke-direct {v1, v2, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.ICON"

    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v4, "android.hardware.radio.metadata.ART"

    invoke-direct {v1, v3, v4}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    const-string/jumbo v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-direct {v1, v2, v3}, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;-><init>(Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;Ljava/lang/String;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static programFilterToHal(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .locals 5

    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifierTypes:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->identifiers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    iput-boolean v2, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->includeCategories:Z

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->excludeModifications:Z

    return-object v0
.end method

.method public static programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4

    iget v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget v1, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    iget-wide v2, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v0
.end method

.method public static programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 15

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->relatedContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    new-instance v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->selector:Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/hardware/radio/ProgramSelector;

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    iget v6, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->infoFlags:I

    iget v7, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->signalQuality:I

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->metadata:Ljava/util/ArrayList;

    new-instance v8, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v8}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_12

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Landroid/hardware/broadcastradio/V2_0/Metadata;

    sget-object v12, Lcom/android/server/broadcastradio/hal2/Convert;->METADATA_KEYS:Landroid/util/SparseArray;

    iget v13, v11, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;

    if-nez v12, :cond_10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Ignored unknown metadata entry: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v11, Landroid/hardware/broadcastradio/V2_0/Metadata;->key:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    const-string/jumbo v11, "RDS_PS"

    goto/16 :goto_1

    :cond_0
    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    const-string/jumbo v11, "RDS_PTY"

    goto/16 :goto_1

    :cond_1
    const/4 v13, 0x3

    if-ne v11, v13, :cond_2

    const-string/jumbo v11, "RBDS_PTY"

    goto/16 :goto_1

    :cond_2
    const/4 v13, 0x4

    if-ne v11, v13, :cond_3

    const-string/jumbo v11, "RDS_RT"

    goto/16 :goto_1

    :cond_3
    const/4 v13, 0x5

    if-ne v11, v13, :cond_4

    const-string/jumbo v11, "SONG_TITLE"

    goto :goto_1

    :cond_4
    const/4 v13, 0x6

    if-ne v11, v13, :cond_5

    const-string/jumbo v11, "SONG_ARTIST"

    goto :goto_1

    :cond_5
    const/4 v13, 0x7

    if-ne v11, v13, :cond_6

    const-string/jumbo v11, "SONG_ALBUM"

    goto :goto_1

    :cond_6
    const/16 v13, 0x8

    if-ne v11, v13, :cond_7

    const-string/jumbo v11, "STATION_ICON"

    goto :goto_1

    :cond_7
    const/16 v13, 0x9

    if-ne v11, v13, :cond_8

    const-string v11, "ALBUM_ART"

    goto :goto_1

    :cond_8
    const/16 v13, 0xa

    if-ne v11, v13, :cond_9

    const-string/jumbo v11, "PROGRAM_NAME"

    goto :goto_1

    :cond_9
    const/16 v13, 0xb

    if-ne v11, v13, :cond_a

    const-string v11, "DAB_ENSEMBLE_NAME"

    goto :goto_1

    :cond_a
    const/16 v13, 0xc

    if-ne v11, v13, :cond_b

    const-string v11, "DAB_ENSEMBLE_NAME_SHORT"

    goto :goto_1

    :cond_b
    const/16 v13, 0xd

    if-ne v11, v13, :cond_c

    const-string v11, "DAB_SERVICE_NAME"

    goto :goto_1

    :cond_c
    const/16 v13, 0xe

    if-ne v11, v13, :cond_d

    const-string v11, "DAB_SERVICE_NAME_SHORT"

    goto :goto_1

    :cond_d
    const/16 v13, 0xf

    if-ne v11, v13, :cond_e

    const-string v11, "DAB_COMPONENT_NAME"

    goto :goto_1

    :cond_e
    const/16 v13, 0x10

    if-ne v11, v13, :cond_f

    const-string v11, "DAB_COMPONENT_NAME_SHORT"

    goto :goto_1

    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0x"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v11}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BcRadio2Srv.convert"

    invoke-static {v12, v11}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    sget-object v13, Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;->STRING:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    iget-object v14, v12, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->type:Lcom/android/server/broadcastradio/hal2/Convert$MetadataType;

    iget-object v12, v12, Lcom/android/server/broadcastradio/hal2/Convert$MetadataDef;->key:Ljava/lang/String;

    if-ne v14, v13, :cond_11

    iget-object v11, v11, Landroid/hardware/broadcastradio/V2_0/Metadata;->stringValue:Ljava/lang/String;

    invoke-virtual {v8, v12, v11}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_0

    :cond_11
    iget-wide v13, v11, Landroid/hardware/broadcastradio/V2_0/Metadata;->intValue:J

    long-to-int v11, v13

    invoke-virtual {v8, v12, v11}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v8}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->vendorInfo:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;)V

    return-object v1
.end method

.method public static programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 5

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-wide v0, v0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    new-instance v1, Landroid/hardware/radio/ProgramSelector;

    iget-object p0, p0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    iget v3, p0, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/16 v4, 0x3e8

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x7

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x2

    :goto_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->programIdentifierFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v3, p0, v0, v2}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .locals 4

    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v3

    iput v3, v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->type:I

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/broadcastradio/V2_0/ProgramIdentifier;->value:J

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    iget-object v1, v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->secondaryIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static propertiesFromHal(ILjava/lang/String;Landroid/hardware/broadcastradio/V2_0/Properties;Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;Ljava/util/List;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 29

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->supportedIdentifierTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget v7, v2, v6

    const/4 v8, 0x2

    const/4 v9, 0x4

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const/16 v10, 0x3e8

    if-lt v7, v10, :cond_0

    const/16 v10, 0x7cf

    if-gt v7, v10, :cond_0

    goto :goto_1

    :cond_0
    move v7, v5

    goto :goto_1

    :pswitch_1
    const/4 v7, 0x7

    goto :goto_1

    :pswitch_2
    const/4 v7, 0x6

    goto :goto_1

    :pswitch_3
    const/4 v7, 0x5

    goto :goto_1

    :pswitch_4
    move v7, v9

    goto :goto_1

    :pswitch_5
    move v7, v8

    :goto_1
    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-ne v7, v8, :cond_2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ne v7, v9, :cond_3

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v17

    new-instance v3, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget-object v7, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->maker:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->product:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->version:Ljava/lang/String;

    iget-object v10, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->serial:Ljava/lang/String;

    if-nez v1, :cond_5

    new-array v1, v5, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    :goto_3
    move-object v15, v1

    goto/16 :goto_7

    :cond_5
    iget-object v4, v1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v5, v4, :cond_e

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    check-cast v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;

    iget v12, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    sget-object v13, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    sget-object v14, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->FM:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    const/16 v15, 0x1e

    if-ge v12, v15, :cond_7

    :cond_6
    :goto_5
    move-object v12, v13

    goto :goto_6

    :cond_7
    const/16 v15, 0x1f4

    if-ge v12, v15, :cond_8

    sget-object v12, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_LW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    goto :goto_6

    :cond_8
    const/16 v15, 0x6a9

    if-ge v12, v15, :cond_9

    sget-object v12, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_MW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    goto :goto_6

    :cond_9
    const/16 v15, 0x7530

    if-ge v12, v15, :cond_a

    sget-object v12, Lcom/android/server/broadcastradio/hal2/FrequencyBand;->AM_SW:Lcom/android/server/broadcastradio/hal2/FrequencyBand;

    goto :goto_6

    :cond_a
    const v15, 0xea60

    if-ge v12, v15, :cond_b

    goto :goto_5

    :cond_b
    const v15, 0x1adb0

    if-ge v12, v15, :cond_6

    move-object v12, v14

    :goto_6
    if-ne v12, v13, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unknown frequency band at "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "kHz"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BcRadio2Srv.convert"

    invoke-static {v12, v11}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const/16 v19, 0x0

    if-ne v12, v14, :cond_d

    new-instance v18, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iget v12, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v13, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v11, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v20, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v23, v11

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-direct/range {v18 .. v28}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    move-object/from16 v11, v18

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    new-instance v18, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iget v12, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->lowerBound:I

    iget v13, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->upperBound:I

    iget v11, v11, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange;->spacing:I

    const/16 v24, 0x1

    const/16 v20, 0x0

    move/from16 v23, v11

    move/from16 v21, v12

    move/from16 v22, v13

    invoke-direct/range {v18 .. v24}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    move-object/from16 v11, v18

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    goto/16 :goto_3

    :goto_7
    if-nez p4, :cond_f

    const/4 v1, 0x0

    :goto_8
    move-object/from16 v19, v1

    goto :goto_9

    :cond_f
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_8

    :goto_9
    iget-object v0, v0, Landroid/hardware/broadcastradio/V2_0/Properties;->vendorInfo:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v20}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static throwOnError(ILjava/lang/String;)V
    .locals 3

    const-string v0, ": "

    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string/jumbo v1, "OK"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string/jumbo v1, "UNKNOWN_ERROR"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string v1, "INTERNAL_ERROR"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    const-string v1, "INVALID_ARGUMENTS"

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    const-string v1, "INVALID_STATE"

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p0, v1, :cond_5

    const-string/jumbo v1, "NOT_SUPPORTED"

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne p0, v1, :cond_6

    const-string/jumbo v1, "TIMEOUT"

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    throw v0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Landroid/os/ParcelableException;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;

    iget-object v2, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "BcRadio2Srv.convert"

    const-string/jumbo v2, "VendorKeyValue contains null pointers"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method
