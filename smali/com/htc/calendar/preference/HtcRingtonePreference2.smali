.class public Lcom/htc/calendar/preference/HtcRingtonePreference2;
.super Lcom/htc/preference/HtcRingtonePreference;
.source "HtcRingtonePreference2.java"

# interfaces
.implements Lcom/htc/preference/HtcPreferenceManager$OnActivityResultListener;


# static fields
.field public static final DEFAULT_CAL_NOTIFICATION_URI:Ljava/lang/String; = "content://settings/system/cal_notification"

.field private static final PICKER_CREATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcRingtonePreference"


# instance fields
.field private ID_CALENDAR:I

.field private KEY_ALERTS_RINGTONE:Ljava/lang/String;

.field private SDMDEFSTRURI:Ljava/lang/String;

.field private SDMPICKERTYPE:Ljava/lang/String;

.field private SDMSAVEORNOT:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private sense_1_6:D

.field private sense_2_0:D

.field private sense_2_1:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/calendar/preference/HtcRingtonePreference2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/calendar/preference/HtcRingtonePreference2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/16 v1, 0x64

    iput v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mRequestCode:I

    .line 63
    const-string v1, "SDMPickerType"

    iput-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMPICKERTYPE:Ljava/lang/String;

    .line 64
    const-string v1, "SDMSaveOrNot"

    iput-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMSAVEORNOT:Ljava/lang/String;

    .line 65
    const-string v1, "SDMDefStrUri"

    iput-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMDEFSTRURI:Ljava/lang/String;

    .line 66
    const-wide v1, 0x3ff999999999999aL

    iput-wide v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_1_6:D

    .line 67
    const-wide/high16 v1, 0x4000

    iput-wide v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_2_0:D

    .line 68
    const-wide v1, 0x4000cccccccccccdL

    iput-wide v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_2_1:D

    .line 69
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->ID_CALENDAR:I

    .line 70
    const-string v1, "preferences_alerts_ringtone"

    iput-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->KEY_ALERTS_RINGTONE:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mRingtoneType:I

    .line 83
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mShowDefault:Z

    .line 85
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mShowSilent:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    iput-object p1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method


# virtual methods
.method public getRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->KEY_ALERTS_RINGTONE:Ljava/lang/String;

    const-string v2, "content://settings/system/cal_notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/htc/preference/HtcRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 115
    iget v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mRequestCode:I

    if-ne p1, v1, :cond_4

    .line 116
    if-eqz p3, :cond_1

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, uri:Landroid/net/Uri;
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_1_6:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    .line 119
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #uri:Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 123
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0, v0}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->onSaveRingtone(Landroid/net/Uri;)V

    .line 127
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x1

    .line 129
    :goto_2
    return v1

    .line 120
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_2
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_2_0:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 121
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 129
    .end local v0           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "ringtonePickerIntent"

    .prologue
    .line 145
    const-string v1, "HtcRingtonePreference"

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_1_6:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 147
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mShowDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->DEFAULT_CALENDAR_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mShowSilent:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mRingtoneType:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    sget-object v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->sense_2_0:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, myBundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMPICKERTYPE:Ljava/lang/String;

    iget v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->ID_CALENDAR:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMSAVEORNOT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    iget-object v1, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->SDMDEFSTRURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->getRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    const-string v1, "com.htc.sdm"

    const-string v2, "com.htc.sdm.activity.SoundPicker"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v1}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, uriString:Ljava/lang/String;
    const-string v2, "HtcRingtonePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v2, "content://settings/system/cal_notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/calendar/preference/HtcRingtonePreference2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cal_notification"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3
    .parameter "ringtoneUri"

    .prologue
    .line 109
    const-string v0, "HtcRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveRingtone uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->persistString(Ljava/lang/String;)Z

    .line 111
    return-void

    .line 110
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
