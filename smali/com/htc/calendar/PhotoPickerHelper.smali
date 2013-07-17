.class public Lcom/htc/calendar/PhotoPickerHelper;
.super Ljava/lang/Object;
.source "PhotoPickerHelper.java"


# static fields
.field private static final ACTION_PICK_PHOTO_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field private static final CALENDAR_FILES_PATH:Ljava/lang/String; = "/data/data/com.htc.calendar/files/"

.field private static final PHOTO_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final PHOTO_PATH:Ljava/lang/String; = "/data/data/com.htc.calendar/files/photo_"

.field private static final PHOTO_PREFIX:Ljava/lang/String; = "photo_"

.field private static final TAG:Ljava/lang/String; = "PhotoPickerHelper"

.field private static mActivity:Landroid/app/Activity;

.field private static mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private static mRequestCode_camera:I

.field private static mRequestCode_gallery:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/htc/calendar/PhotoPickerHelper$1;

    invoke-direct {v0}, Lcom/htc/calendar/PhotoPickerHelper$1;-><init>()V

    sput-object v0, Lcom/htc/calendar/PhotoPickerHelper;->mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/htc/calendar/PhotoPickerHelper;->mRequestCode_gallery:I

    return v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/htc/calendar/PhotoPickerHelper;->pickerOnGallery(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/htc/calendar/PhotoPickerHelper;->mRequestCode_camera:I

    return v0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/htc/calendar/PhotoPickerHelper;->pickerOnCamera(I)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/calendar/PhotoPickerHelper;->removePhoto()V

    return-void
.end method

.method public static getFullAvatarLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/htc/calendar/PhotoPickerHelper;->getPathPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPathPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "/data/data/com.htc.calendar/files/"

    return-object v0
.end method

.method private static getPhotoName(J)Ljava/lang/String;
    .locals 4
    .parameter "uuid"

    .prologue
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/com.htc.calendar/files/photo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, file:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, myPhotoFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static handleResultFromCamera(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p0, :cond_1

    move-object v0, v1

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    const-string v2, "data"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 135
    .local v0, photo:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 136
    const-string v2, "PhotoPickerHelper"

    const-string v3, "can\'t get photo by Camera"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 137
    goto :goto_0
.end method

.method public static handleResultFromGallery(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p0, :cond_1

    move-object v0, v1

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    const-string v2, "data"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    .local v0, photo:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 124
    const-string v2, "PhotoPickerHelper"

    const-string v3, "can\'t get photo by Gallery"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 125
    goto :goto_0
.end method

.method public static launchPhotoPickerMenu(Landroid/app/Activity;ZII)V
    .locals 6
    .parameter "activity"
    .parameter "canRemove"
    .parameter "gallery_code"
    .parameter "camera_code"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sput-object p0, Lcom/htc/calendar/PhotoPickerHelper;->mActivity:Landroid/app/Activity;

    .line 60
    sput p2, Lcom/htc/calendar/PhotoPickerHelper;->mRequestCode_gallery:I

    .line 61
    sput p3, Lcom/htc/calendar/PhotoPickerHelper;->mRequestCode_camera:I

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 64
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 66
    .local v0, ppMenus:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 67
    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 69
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 70
    .local v1, ppMenus_noRemove:[Ljava/lang/String;
    aget-object v3, v0, v4

    aput-object v3, v1, v4

    .line 71
    aget-object v3, v0, v5

    aput-object v3, v1, v5

    .line 73
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/htc/calendar/PhotoPickerHelper$2;

    invoke-direct {v4}, Lcom/htc/calendar/PhotoPickerHelper$2;-><init>()V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080063

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_2

    move-object v1, v0

    .end local v1           #ppMenus_noRemove:[Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/htc/calendar/PhotoPickerHelper;->mItemClickDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v1, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private static pickerOnCamera(I)V
    .locals 4
    .parameter "request_code"

    .prologue
    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "RequestedFrom"

    const-string v3, "contacts"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    :try_start_0
    sget-object v2, Lcom/htc/calendar/PhotoPickerHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhotoPickerHelper"

    const-string v3, "error launch Camera"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static pickerOnGallery(I)V
    .locals 5
    .parameter "request_code"

    .prologue
    const/4 v4, 0x1

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v2, "outputX"

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string v2, "outputY"

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    :try_start_0
    sget-object v2, Lcom/htc/calendar/PhotoPickerHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v2, "PhotoPickerHelper"

    const-string v3, "error launch Gallery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removePhoto()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public static saveBitmapToDisk(Landroid/content/Context;JLandroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "uuid"
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p3, :cond_1

    .line 153
    const-string v4, "PhotoPickerHelper"

    const-string v5, "saveBitmapToDisk bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 157
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/calendar/PhotoPickerHelper;->getPhotoName(J)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, fileName:Ljava/lang/String;
    const-string v4, "PhotoPickerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save photo on: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v2, 0x0

    .line 162
    .local v2, out:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 163
    if-nez v2, :cond_2

    .line 164
    const-string v4, "PhotoPickerHelper"

    const-string v5, "out is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {p3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    if-eqz v2, :cond_0

    .line 174
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PhotoPickerHelper"

    const-string v4, "Error on close File!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "PhotoPickerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error on save bitmap in uuid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-eqz v2, :cond_3

    .line 174
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    move-object v1, v3

    .line 178
    goto :goto_0

    .line 176
    :catch_2
    move-exception v0

    .line 177
    const-string v4, "PhotoPickerHelper"

    const-string v5, "Error on close File!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 174
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 175
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 178
    :cond_4
    :goto_2
    throw v3

    .line 176
    :catch_3
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "PhotoPickerHelper"

    const-string v5, "Error on close File!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
