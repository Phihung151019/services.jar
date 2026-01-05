.class public abstract Lcom/android/server/hdmi/HdmiCecKeycode;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 96

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x17

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x13

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v3, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v5, 0x14

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v5, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v6, 0x15

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object v6, v5

    new-instance v5, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v8, 0x16

    const/4 v9, 0x4

    invoke-direct {v5, v8, v9}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object v8, v6

    new-instance v6, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v10, -0x1

    const/4 v11, 0x5

    invoke-direct {v6, v10, v11}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v12, 0x6

    invoke-direct {v11, v10, v12}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object v12, v8

    new-instance v8, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v13, 0x7

    invoke-direct {v8, v10, v13}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v14, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v15, 0x8

    invoke-direct {v14, v10, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v15, 0x9

    invoke-direct {v4, v7, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object v7, v11

    new-instance v11, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v13, 0x52

    invoke-direct {v11, v13, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object/from16 v19, v4

    move-object v4, v12

    new-instance v12, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v13, 0xb0

    const/16 v15, 0xa

    invoke-direct {v12, v13, v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v15, 0x100

    const/16 v9, 0xb

    invoke-direct {v13, v15, v9, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    move-object v15, v14

    new-instance v14, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xc

    invoke-direct {v14, v10, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object/from16 v25, v15

    new-instance v15, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v10, 0xd

    const/4 v2, 0x4

    invoke-direct {v15, v2, v10}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x6f

    invoke-direct {v2, v9, v10}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v9, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v10, 0xe2

    move-object/from16 v29, v0

    const/16 v0, 0x10

    invoke-direct {v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v10, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x101

    move-object/from16 v31, v1

    const/16 v1, 0x11

    invoke-direct {v10, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0xea

    move-object/from16 v32, v2

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe3

    move-object/from16 v33, v0

    const/16 v0, 0x1e

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe4

    move-object/from16 v34, v1

    const/16 v1, 0x1f

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x20

    move-object/from16 v35, v0

    const/4 v0, 0x7

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x21

    move-object/from16 v18, v1

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x22

    move-object/from16 v17, v0

    const/16 v0, 0x9

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x23

    move-object/from16 v21, v1

    const/16 v1, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x24

    move-object/from16 v22, v0

    const/16 v0, 0xb

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x25

    move-object/from16 v23, v1

    const/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x26

    move-object/from16 v27, v0

    const/16 v0, 0xd

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe

    move-object/from16 v28, v1

    const/16 v1, 0x27

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xf

    move-object/from16 v36, v0

    const/16 v0, 0x28

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x29

    move-object/from16 v37, v1

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x38

    move-object/from16 v38, v0

    const/16 v0, 0x2a

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa0

    move-object/from16 v40, v1

    const/16 v1, 0x2b

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x1c

    move-object/from16 v41, v0

    const/16 v0, 0x2c

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x2f

    move-object/from16 v42, v1

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa6

    move-object/from16 v43, v0

    const/16 v0, 0x30

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa7

    move-object/from16 v44, v1

    const/16 v1, 0x31

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe5

    move-object/from16 v45, v0

    const/16 v0, 0x32

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xde

    move-object/from16 v46, v1

    const/16 v1, 0x33

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb2

    move-object/from16 v47, v0

    const/16 v0, 0x34

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xa5

    move-object/from16 v48, v1

    const/16 v1, 0x35

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x36

    move-object/from16 v49, v0

    const/4 v0, -0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5c

    move-object/from16 v50, v1

    const/16 v1, 0x37

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5d

    move-object/from16 v51, v0

    const/16 v0, 0x38

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x1a

    move-object/from16 v39, v1

    const/16 v1, 0x40

    move-object/from16 v52, v3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x18

    const/16 v3, 0x41

    invoke-direct {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x19

    move-object/from16 v53, v0

    const/16 v0, 0x42

    invoke-direct {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa4

    move-object/from16 v54, v1

    const/16 v1, 0x43

    move-object/from16 v55, v2

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x7e

    const/16 v3, 0x44

    invoke-direct {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x56

    move-object/from16 v56, v0

    const/16 v0, 0x45

    invoke-direct {v2, v3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x7f

    move-object/from16 v58, v1

    const/16 v1, 0x46

    invoke-direct {v0, v3, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v3, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v59, v0

    const/16 v0, 0x55

    invoke-direct {v3, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0x82

    move-object/from16 v61, v2

    const/16 v2, 0x47

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x59

    move-object/from16 v62, v1

    const/16 v1, 0x48

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x5a

    move-object/from16 v63, v0

    const/16 v0, 0x49

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x81

    move-object/from16 v64, v1

    const/16 v1, 0x4a

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x57

    move-object/from16 v65, v0

    const/16 v0, 0x4b

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x58

    move-object/from16 v67, v1

    const/16 v1, 0x4c

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x4d

    move-object/from16 v68, v0

    const/4 v0, -0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v69, v1

    const/16 v1, 0x4e

    invoke-direct {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v70, v2

    const/16 v2, 0x4f

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v71, v1

    const/16 v1, 0x50

    invoke-direct {v2, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v0, 0xaf

    move-object/from16 v72, v2

    const/16 v2, 0x51

    invoke-direct {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v20, v1

    const/16 v1, 0x52

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xac

    move-object/from16 v73, v0

    const/16 v0, 0x53

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x102

    move-object/from16 v74, v1

    const/16 v1, 0x54

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v2, -0x1

    move-object/from16 v60, v0

    const/16 v0, 0x55

    invoke-direct {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v75, v1

    const/16 v1, 0x56

    invoke-direct {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0x10

    int-to-byte v1, v1

    move-object/from16 v30, v0

    move/from16 v16, v1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v0, 0x0

    aput-byte v16, v1, v0

    move/from16 v24, v0

    const/16 v0, 0xeb

    move-object/from16 v16, v3

    move-object/from16 v57, v4

    const/4 v3, 0x1

    const/16 v4, 0x56

    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v1, 0x60

    int-to-byte v4, v1

    new-array v1, v3, [B

    aput-byte v4, v1, v24

    const/16 v4, 0xec

    move-object/from16 v78, v2

    const/16 v2, 0x56

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x80

    int-to-byte v4, v4

    new-array v2, v3, [B

    aput-byte v4, v2, v24

    const/16 v4, 0xee

    move-object/from16 v79, v0

    const/16 v0, 0x56

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x90

    int-to-byte v4, v4

    new-array v0, v3, [B

    aput-byte v4, v0, v24

    const/16 v4, 0xef

    move-object/from16 v80, v1

    const/16 v1, 0x56

    invoke-direct {v2, v4, v1, v0, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    int-to-byte v4, v3

    new-array v1, v3, [B

    aput-byte v4, v1, v24

    const/16 v4, 0xf1

    move-object/from16 v81, v2

    const/16 v2, 0x56

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II[BZ)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v2, -0x1

    const/16 v3, 0x57

    invoke-direct {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v3, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move/from16 v4, v24

    move-object/from16 v24, v0

    const/16 v0, 0x60

    invoke-direct {v3, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v26, v1

    const/16 v1, 0x61

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v76, v0

    const/16 v0, 0x62

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v77, v1

    const/16 v1, 0x63

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v66, v0

    const/16 v0, 0x64

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v82, v1

    const/16 v1, 0x65

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v83, v0

    const/16 v0, 0x66

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v84, v1

    const/16 v1, 0x67

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v85, v0

    const/16 v0, 0x68

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v86, v1

    const/16 v1, 0x69

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v87, v0

    const/16 v0, 0x6a

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v88, v1

    const/16 v1, 0x6b

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v89, v0

    const/16 v0, 0x6c

    invoke-direct {v1, v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-object/from16 v90, v1

    const/16 v1, 0x6d

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(III)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xba

    const/16 v4, 0x71

    invoke-direct {v1, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0xb7

    move-object/from16 v91, v0

    const/16 v0, 0x72

    invoke-direct {v2, v4, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0xb8

    move-object/from16 v92, v1

    const/16 v1, 0x73

    invoke-direct {v0, v4, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0xb9

    move-object/from16 v93, v0

    const/16 v0, 0x74

    invoke-direct {v1, v4, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0x87

    move-object/from16 v94, v1

    const/16 v1, 0x75

    invoke-direct {v0, v4, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v4, 0xe6

    move-object/from16 v95, v0

    const/16 v0, 0x76

    invoke-direct {v1, v4, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    move-object/from16 v4, v94

    move-object/from16 v94, v1

    move-object/from16 v1, v31

    move-object/from16 v31, v38

    move-object/from16 v38, v46

    move-object/from16 v46, v54

    move-object/from16 v54, v63

    move-object/from16 v63, v20

    move-object/from16 v20, v34

    move-object/from16 v34, v42

    move-object/from16 v42, v50

    move-object/from16 v50, v61

    move-object/from16 v61, v71

    move-object/from16 v71, v80

    move-object/from16 v80, v83

    move-object/from16 v83, v86

    move-object/from16 v86, v89

    move-object/from16 v89, v92

    move-object/from16 v92, v4

    move-object/from16 v4, v57

    move-object/from16 v57, v67

    move-object/from16 v67, v75

    move-object/from16 v75, v3

    move-object/from16 v3, v52

    move-object/from16 v52, v16

    move-object/from16 v16, v32

    move-object/from16 v32, v40

    move-object/from16 v40, v48

    move-object/from16 v48, v56

    move-object/from16 v56, v65

    move-object/from16 v65, v74

    move-object/from16 v74, v26

    move-object/from16 v26, v23

    move-object/from16 v23, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v22

    move-object/from16 v22, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v33

    move-object/from16 v33, v41

    move-object/from16 v41, v49

    move-object/from16 v49, v58

    move-object/from16 v58, v68

    move-object/from16 v68, v30

    move-object/from16 v30, v37

    move-object/from16 v37, v45

    move-object/from16 v45, v53

    move-object/from16 v53, v62

    move-object/from16 v62, v72

    move-object/from16 v72, v81

    move-object/from16 v81, v84

    move-object/from16 v84, v87

    move-object/from16 v87, v90

    move-object/from16 v90, v2

    move-object/from16 v2, v29

    move-object/from16 v29, v36

    move-object/from16 v36, v44

    move-object/from16 v44, v39

    move-object/from16 v39, v47

    move-object/from16 v47, v55

    move-object/from16 v55, v64

    move-object/from16 v64, v73

    move-object/from16 v73, v24

    move-object/from16 v24, v21

    move-object/from16 v21, v35

    move-object/from16 v35, v43

    move-object/from16 v43, v51

    move-object/from16 v51, v59

    move-object/from16 v59, v69

    move-object/from16 v69, v78

    move-object/from16 v78, v66

    move-object/from16 v66, v60

    move-object/from16 v60, v70

    move-object/from16 v70, v79

    move-object/from16 v79, v82

    move-object/from16 v82, v85

    move-object/from16 v85, v88

    move-object/from16 v88, v91

    move-object/from16 v91, v93

    move-object/from16 v93, v95

    filled-new-array/range {v1 .. v94}, [Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    move-result-object v0

    sput-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    return-void
.end method

.method public static androidKeyToCecKey(I)[B
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v2, p0, :cond_0

    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    :cond_0
    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static isRepeatableKey(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget v3, v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v3, p0, :cond_0

    iget-boolean v2, v2, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isVolumeKeycode(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 p0, 0x41

    if-eq v0, p0, :cond_1

    const/16 p0, 0x42

    if-eq v0, p0, :cond_1

    const/16 p0, 0x43

    if-eq v0, p0, :cond_1

    const/16 p0, 0x65

    if-eq v0, p0, :cond_1

    const/16 p0, 0x66

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
