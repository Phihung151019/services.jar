.class Lcom/android/server/flags/FeatureFlagsBinder;
.super Landroid/flags/IFeatureFlags$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

.field public final mFlagCache:Lcom/android/server/flags/FlagCache;

.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V
    .locals 1

    invoke-direct {p0}, Landroid/flags/IFeatureFlags$Stub;-><init>()V

    new-instance v0, Lcom/android/server/flags/FlagCache;

    invoke-direct {v0}, Lcom/android/server/flags/FlagCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    new-instance p2, Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-direct {p2, p1}, Lcom/android/server/flags/DynamicFlagBinderDelegate;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    iput-object p2, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iput-object p3, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    return-void
.end method


# virtual methods
.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 p1, 0x4

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p3, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, p2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    array-length p2, p4

    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    return v3

    :cond_0
    aget-object p2, p4, v3

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/flags/FlagsShellCommand;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    const-string v6, " <namespace> <name>`"

    const-string v7, "."

    const-string v8, "Expected `"

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move p2, v1

    goto :goto_1

    :sswitch_0
    const-string/jumbo v9, "erase"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "list"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "help"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move p2, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "set"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p2, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v9, "get"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p2, v3

    :goto_1
    packed-switch p2, :pswitch_data_0

    const-string/jumbo p0, "This command is unknown."

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    return v1

    :pswitch_0
    aget-object p1, p4, v3

    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    return v1

    :cond_6
    aget-object p1, p4, v4

    aget-object p2, p4, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Erased "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p4, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_1
    aget-object p2, p4, v3

    invoke-static {p4, v3, v4, p2, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [namespace]`"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    return v1

    :cond_7
    array-length p2, p4

    if-ne p2, v2, :cond_8

    aget-object p2, p4, v4

    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/flags/FlagOverrideStore;->getFlagsForNamespace(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9

    const-string/jumbo p0, "No overrides set"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/16 p4, 0x9

    const/4 v0, 0x5

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_b
    const-string p2, "%-"

    const-string/jumbo v1, "s"

    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "namespace"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "flag"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v5, "value"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v3

    :goto_4
    const/16 v6, 0x3d

    if-ge v5, p4, :cond_c

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    add-int/2addr v5, v4

    goto :goto_4

    :cond_c
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    move v5, v3

    :goto_5
    if-ge v5, p1, :cond_d

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    add-int/2addr v5, v4

    goto :goto_5

    :cond_d
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    move v5, v3

    :goto_6
    if-ge v5, v0, :cond_e

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(C)V

    add-int/2addr v5, v4

    goto :goto_6

    :cond_e
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-static {p4, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    :goto_8
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    return v3

    :pswitch_2
    invoke-static {p3}, Lcom/android/server/flags/FlagsShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    return v3

    :pswitch_3
    aget-object p1, p4, v3

    invoke-static {p4, v0, v0, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <namespace> <name> <value>`"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    return v1

    :cond_11
    aget-object p1, p4, v4

    aget-object p2, p4, v2

    aget-object v1, p4, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Flag "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p4, v2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is now "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p4, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    return v3

    :pswitch_4
    aget-object p1, p4, v3

    invoke-static {p4, v2, v2, p1, v5}, Lcom/android/server/flags/FlagsShellCommand;->validateNumArguments([Ljava/lang/String;IILjava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p4, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    return v1

    :cond_12
    aget-object p1, p4, v4

    aget-object p2, p4, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p4, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p4, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_9

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->translateEscapes()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    :goto_9
    const-string p0, "<unset>"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x30cf41 -> :sswitch_2
        0x32b09e -> :sswitch_1
        0x5c492a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final overrideFlag(Landroid/flags/SyncableFlag;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/flags/FlagOverrideStore;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final queryFlags(Ljava/util/List;)Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/SyncableFlag;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagOverrideStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    move v10, v4

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    if-eqz v6, :cond_1

    iget-object v4, v6, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    goto :goto_3

    :cond_1
    new-instance v6, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    invoke-direct {v6, v2, v3}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3, v6}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_2

    invoke-static {v2, v3, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_4
    move-object v8, v4

    goto :goto_5

    :cond_3
    iget-object v4, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :goto_5
    new-instance v5, Landroid/flags/SyncableFlag;

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v9

    invoke-direct/range {v5 .. v10}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/flags/IFeatureFlagsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;

    invoke-direct {v3, p0, v0}, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;-><init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V

    const/4 v0, 0x0

    invoke-interface {v1, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string v0, "FeatureFlagsService"

    const-string v1, "Failed to link to binder death. Callback not registered."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter p0

    :try_start_2
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final resetFlag(Landroid/flags/SyncableFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertWritePermission()V

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/flags/FlagOverrideStore;->erase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final syncFlags(Ljava/util/List;)Ljava/util/List;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/flags/FeatureFlagsBinder;->mPermissionsChecker:Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {v0}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;->assertSyncPermission()V

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->clearCallingIdentity()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v5

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v6

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/flags/SyncableFlag;

    if-nez v7, :cond_1

    invoke-static {v9}, Lcom/android/internal/flags/CoreFlags;->isCoreFlag(Landroid/flags/SyncableFlag;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    throw v0

    :cond_1
    :goto_2
    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v10, v1, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->isDynamic()Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v13, v11, v12}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v15, v11, v12}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    goto :goto_3

    :cond_3
    new-instance v4, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;

    invoke-direct {v4, v11, v12}, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v11, v12, v4}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_4

    invoke-static {v11, v12, v14}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    iget-object v12, v10, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDynamicFlags:Lcom/android/server/flags/FlagCache;

    iget-object v14, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    monitor-enter v14

    :try_start_1
    iget-object v12, v12, Lcom/android/server/flags/FlagCache;->mCache:Ljava/util/Map;

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_5

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v12

    iget-object v10, v10, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mDeviceConfigListener:Lcom/android/server/flags/DynamicFlagBinderDelegate$1;

    invoke-static {v11, v12, v10}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    :cond_5
    iget-object v10, v13, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mPids:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v13, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mValue:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v13, Lcom/android/server/flags/DynamicFlagBinderDelegate$DynamicFlagData;->mDefaultValue:Ljava/lang/String;

    new-instance v10, Landroid/flags/SyncableFlag;

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9, v4, v5}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    iget-object v4, v1, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    monitor-enter v4

    :try_start_3
    iget-object v12, v1, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v12, v10, v11}, Lcom/android/server/flags/FlagCache;->getOrNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_7

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/flags/FeatureFlagsBinder;->mFlagCache:Lcom/android/server/flags/FlagCache;

    invoke-virtual {v13, v10, v11, v12}, Lcom/android/server/flags/FlagCache;->setIfChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_4
    new-instance v10, Landroid/flags/SyncableFlag;

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9, v12, v6}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    move-object v9, v10

    :goto_6
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :goto_7
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_8
    return-object v3
.end method

.method public final unregisterCallback(Landroid/flags/IFeatureFlagsCallback;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/flags/FeatureFlagsBinder;->mDynamicFlagDelegate:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    invoke-static {}, Landroid/flags/IFeatureFlags$Stub;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/android/server/flags/DynamicFlagBinderDelegate;->NEW_CALLBACK_SET:Lcom/android/server/flags/DynamicFlagBinderDelegate$$ExternalSyntheticLambda0;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
