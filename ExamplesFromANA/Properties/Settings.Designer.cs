﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:2.0.50727.42
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ExamplesFromANA.Properties {


	[global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
	[global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "8.0.0.0")]
	internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {

		private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));

		public static Settings Default {
			get {
				return defaultInstance;
			}
		}

		[global::System.Configuration.UserScopedSettingAttribute()]
		[global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
		public global::System.Collections.Specialized.StringCollection RecentFiles {
			get {
				return ((global::System.Collections.Specialized.StringCollection)(this["RecentFiles"]));
			}
			set {
				this["RecentFiles"] = value;
			}
		}

		[global::System.Configuration.UserScopedSettingAttribute()]
		[global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
		public global::System.Collections.Specialized.StringCollection RecentProjects {
			get {
				return ((global::System.Collections.Specialized.StringCollection)(this["RecentProjects"]));
			}
			set {
				this["RecentProjects"] = value;
			}
		}

		[global::System.Configuration.UserScopedSettingAttribute()]
		[global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
		[global::System.Configuration.DefaultSettingValueAttribute("")]
		public string LastProject {
			get {
				return ((string)(this["LastProject"]));
			}
			set {
				this["LastProject"] = value;
			}
		}

		[global::System.Configuration.UserScopedSettingAttribute()]
		[global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
		[global::System.Configuration.DefaultSettingValueAttribute("")]
		public string ParlFolder {
			get {
				return ((string)(this["ParlFolder"]));
			}
			set {
				this["ParlFolder"] = value;
			}
		}

		[global::System.Configuration.UserScopedSettingAttribute()]
		[global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
		public global::System.Collections.Specialized.StringCollection RecentXMLCorpuses {
			get {
				return ((global::System.Collections.Specialized.StringCollection)(this["RecentXMLCorpuses"]));
			}
			set {
				this["RecentXMLCorpuses"] = value;
			}
		}
	}
}
