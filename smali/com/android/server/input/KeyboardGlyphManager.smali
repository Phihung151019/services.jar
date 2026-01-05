.class public final Lcom/android/server/input/KeyboardGlyphManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mGlyphMapCache:Landroid/util/SparseArray;

.field public mGlyphMapDataList:Ljava/util/List;

.field public mGlyphMapDataLoaded:Z

.field public final mGlyphMapLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyboardGlyphManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;
    .locals 10

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    const-string/jumbo v0, "keyboard-glyph-map"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "key-glyph"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :sswitch_1
    const-string/jumbo v4, "function-row-key"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_2

    :sswitch_2
    const-string/jumbo v4, "modifier-glyph"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_2

    :sswitch_3
    const-string/jumbo v4, "hardware-defined-shortcut"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_8

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/R$styleable;->HardwareDefinedShortcut:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-eqz v0, :cond_3

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    new-instance v8, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    invoke-direct {v8, v6, v0}, Landroid/hardware/input/KeyGlyphMap$KeyCombination;-><init>(II)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_3
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :goto_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_4
    sget-object v0, Lcom/android/internal/R$styleable;->FunctionRowKey:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_5
    :goto_5
    :try_start_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_6
    sget-object v0, Lcom/android/internal/R$styleable;->ModifierGlyph:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_7
    :goto_7
    :try_start_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_8
    sget-object v0, Lcom/android/internal/R$styleable;->KeyGlyph:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    invoke-virtual {v4, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_9
    :goto_9
    :try_start_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :goto_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_b
    const-string/jumbo p2, "Unable to parse key glyph map : "

    const-string v0, "KeyboardGlyphManager"

    invoke-static {p0, p2, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    new-instance v0, Landroid/hardware/input/KeyGlyphMap;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/input/KeyGlyphMap;-><init>(Landroid/content/ComponentName;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;[ILjava/util/Map;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x713b9731 -> :sswitch_3
        -0x5435454a -> :sswitch_2
        0x124ef7 -> :sswitch_1
        0x47eb903e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 7

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataLoaded:Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapDataList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_3
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    iget v5, v4, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->vendorId:I

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v6

    if-ne v5, v6, :cond_3

    iget v5, v4, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->productId:I

    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result v6

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xc0080

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;->resourceId:I

    invoke-static {p0, v0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapFromResource(Landroid/content/res/Resources;Landroid/content/ComponentName;I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package not found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyboardGlyphManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadGlyphMapDataList()Ljava/util/List;
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.hardware.input.action.QUERY_KEYBOARD_GLYPH_MAPS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0xc0080

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_2

    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_2
    const-string/jumbo v7, "android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v7, "/"

    const-string v8, "KeyboardGlyphManager"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_GLYPH_MAPS\' on receiver "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v5, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v9, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "keyboard-glyph-maps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :goto_2
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_4

    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v10

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_4
    :try_start_3
    const-string/jumbo v12, "keyboard-glyph-map"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/internal/R$styleable;->KeyboardGlyphMap:[I

    invoke-virtual {v9, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v12, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/4 v0, 0x2

    const/4 v13, -0x1

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    const/4 v0, 0x1

    invoke-virtual {v12, v0, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v14, :cond_6

    if-eq v15, v13, :cond_6

    if-eq v0, v13, :cond_6

    new-instance v13, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-direct/range {v13 .. v18}, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    :try_start_5
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :goto_4
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-eqz v11, :cond_7

    :try_start_6
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse keyboard glyph map resource from receiver "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :goto_8
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_a
    return-object v2
.end method

.method public final onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
