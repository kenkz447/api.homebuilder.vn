﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Omi.Base.Properties {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "15.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    public class Resources {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal Resources() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("Omi.Base.Properties.Resources", typeof(Resources).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        public static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to ENTITY_NOT_FOUND.
        /// </summary>
        public static string ENTITY_NOT_FOUND {
            get {
                return ResourceManager.GetString("ENTITY_NOT_FOUND", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to POST_CUSTOM_ERRORS.
        /// </summary>
        public static string POST_CUSTOM_ERRORS {
            get {
                return ResourceManager.GetString("POST_CUSTOM_ERRORS", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to MODEL_ERRORS.
        /// </summary>
        public static string POST_MODEL_ERRORS {
            get {
                return ResourceManager.GetString("POST_MODEL_ERRORS", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to POST_SUCCEEDED.
        /// </summary>
        public static string POST_SUCCEEDED {
            get {
                return ResourceManager.GetString("POST_SUCCEEDED", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to UPLOAD_EXECPTION_ERROR.
        /// </summary>
        public static string UPLOAD_EXECPTION_ERROR {
            get {
                return ResourceManager.GetString("UPLOAD_EXECPTION_ERROR", resourceCulture);
            }
        }
    }
}