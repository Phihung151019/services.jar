.class public final Lcom/android/server/accessibility/gestures/GestureManifold;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# instance fields
.field public final mEvents:Ljava/util/List;

.field public final mGestures:Ljava/util/List;

.field public final mListener:Lcom/android/server/accessibility/gestures/TouchExplorer;

.field public final mMultiFingerGestures:Ljava/util/List;

.field public mMultiFingerGesturesEnabled:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceHandlesDoubleTap:Z

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTwoFingerPassthroughEnabled:Z

.field public final mTwoFingerSwipes:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/TouchExplorer;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTap;

    const/16 v2, 0x11

    const/4 v3, 0x2

    invoke-direct {v1, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    const/16 v2, 0x12

    invoke-direct {v1, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;

    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v2, 0x1

    const/4 v9, 0x4

    invoke-direct {v1, p1, v2, v9, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v9, 0x3

    invoke-direct {v1, p1, v0, v9, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v0, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v0, p1, v9, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x5

    const/4 v1, 0x0

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0x9

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xa

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xc

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xf

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0x10

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xd

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    const/16 v3, 0xe

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x14

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x2

    const/16 v3, 0x28

    const/4 v1, 0x2

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x15

    const/4 v1, 0x2

    const/4 v2, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x3

    const/16 v3, 0x2b

    const/4 v1, 0x2

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x16

    const/4 v1, 0x3

    const/4 v2, 0x1

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x17

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x1

    const/16 v3, 0x2c

    const/4 v1, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x2

    const/16 v3, 0x29

    const/4 v1, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x18

    const/4 v1, 0x3

    const/4 v2, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x3

    const/16 v3, 0x2d

    const/4 v1, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x18

    const/4 v1, 0x3

    const/4 v2, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x25

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x26

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v2, 0x2

    const/16 v3, 0x2a

    const/4 v1, 0x4

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v3, 0x27

    const/4 v1, 0x4

    const/4 v2, 0x3

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1a

    const/4 v1, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1b

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1c

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x19

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1e

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1f

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x20

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x1d

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x22

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x23

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x24

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/16 v3, 0x21

    const/4 v2, 0x2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    const/4 v1, 0x2

    move-object v5, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/TouchExplorer;

    const/4 v2, 0x5

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    iget v9, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v9, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p1, v7, :cond_2

    if-ne p1, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureStarted()V

    return-void

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz p0, :cond_12

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureStarted()V

    return-void

    :cond_3
    :goto_1
    const/4 v9, 0x2

    if-ne p2, v9, :cond_8

    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_4

    new-instance p2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p2, p1, v0, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    goto :goto_2

    :cond_4
    iget-boolean p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz p2, :cond_5

    new-instance p2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p2, p1, v0, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p4, p5, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_2

    :cond_6
    iget-boolean p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz p2, :cond_7

    new-instance p2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p2, p1, v0, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p4, p5, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    return-void

    :cond_8
    const/4 p1, 0x3

    if-ne p2, p1, :cond_12

    iget p1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne p1, v2, :cond_12

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :cond_9
    if-ge v0, p1, :cond_a

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    check-cast v6, Lcom/android/server/accessibility/gestures/GestureMatcher;

    iget v6, v6, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    if-ne v6, v8, :cond_9

    goto/16 :goto_4

    :cond_a
    sget-boolean p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz p0, :cond_b

    const-string p1, "GestureManifold"

    const-string v0, "Cancelling."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p0, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Gesture cancelled. event="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";rawEvent="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";policyFlags="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TouchExplorer"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne p1, v2, :cond_f

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-ne p0, v8, :cond_d

    goto :goto_3

    :cond_d
    move v8, p2

    :goto_3
    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 p0, 0x80000

    iget-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    if-eqz v8, :cond_e

    const/high16 p0, 0x200000

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_e
    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object p1, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-ne p0, v9, :cond_11

    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result p0

    shl-int v2, v8, p0

    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_10
    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x7

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_11
    iget-object p0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz p1, :cond_12

    new-instance p1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    iget v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    invoke-direct {p1, p2, v0, p0}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_12
    :goto_4
    return-void
.end method
