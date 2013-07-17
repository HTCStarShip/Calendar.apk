.class Lcom/htc/calendar/CalendarPreferenceActivity$4;
.super Ljava/lang/Object;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$4;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity$4;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity$4;->this$0:Lcom/htc/calendar/CalendarPreferenceActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v1}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    #setter for: Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->access$1502(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1515
    const/4 v0, 0x1

    return v0
.end method
