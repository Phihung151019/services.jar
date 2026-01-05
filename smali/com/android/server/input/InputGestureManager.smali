.class public final Lcom/android/server/input/InputGestureManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mGestureLock:Ljava/lang/Object;


# instance fields
.field public final mBlockListedTriggers:Ljava/util/Set;

.field public final mCustomInputGestures:Landroid/util/SparseArray;

.field public final mSystemShortcuts:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xb

    new-array v1, v1, [Landroid/hardware/input/InputGestureData$Trigger;

    const/16 v2, 0x3d

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/16 v2, 0x3e

    const/16 v5, 0x1000

    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    aput-object v6, v1, v3

    const/16 v3, 0x1001

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x36

    const/16 v3, 0x1002

    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const/16 v3, 0x1d

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const/16 v3, 0x1f

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const/16 v3, 0x32

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    const/16 v3, 0x34

    invoke-static {v3, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const/16 v3, 0x9

    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x35

    invoke-static {v2, v5}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    return-void
.end method

.method public static createKeyGesture(III)Landroid/hardware/input/InputGestureData;
    .locals 1

    new-instance v0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-static {p0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I
    .locals 4

    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    instance-of v3, v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v3, :cond_2

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v0

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    monitor-exit v0

    return p0

    :cond_4
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_5
    :goto_1
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCustomGestureForKeyEvent(Landroid/view/KeyEvent;I)Landroid/hardware/input/InputGestureData;
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_1

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    const p2, 0x11003

    and-int/2addr p1, p2

    invoke-static {v0, p1}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v2

    return-object p0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;
    .locals 3

    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p2, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p2, v1}, Landroid/hardware/input/InputGestureData$Filter;->matches(Landroid/hardware/input/InputGestureData;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V
    .locals 4

    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/android/server/input/InputGestureManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputGestureData$Filter;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
